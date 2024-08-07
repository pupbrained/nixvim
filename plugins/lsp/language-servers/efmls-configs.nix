{
  lib,
  helpers,
  config,
  pkgs,
  ...
}:
let
  tools = import ../../../generated/efmls-configs.nix;
  packagingStatus = import ./efmls-configs-pkgs.nix pkgs;

  # Filter packages that are not compatible with the current platform
  toolPkgs = lib.filterAttrs (
    a: pkg: lib.meta.availableOn pkgs.stdenv.hostPlatform pkg
  ) packagingStatus.packaged;
in
{
  options.plugins.efmls-configs = {
    enable = lib.mkEnableOption "efmls-configs, premade configurations for efm-langserver";

    package = helpers.mkPluginPackageOption "efmls-configs-nvim" pkgs.vimPlugins.efmls-configs-nvim;

    externallyManagedPackages = lib.mkOption {
      type = with lib.types; either (enum [ "all" ]) (listOf str);
      description = ''
        Linters/Formatters to skip installing with nixvim. Set to `all` to install no packages
      '';
      default = [ ];
    };

    toolPackages = lib.attrsets.mapAttrs (
      tool: pkg:
      helpers.mkPackageOption {
        name = tool;
        default = pkg;
      }
    ) toolPkgs;

    /*
      Users can set the options as follows:

      {
        c = {
          linter = "cppcheck";
          formatter = ["clang-format" "uncrustify"];
        };
        go = {
          linter = ["djlint" "golangci_lint"];
        };
      }
    */
    setup = lib.mkOption {
      type = lib.types.submodule {
        freeformType = lib.types.attrsOf lib.types.anything;

        options = lib.mapAttrs (
          _: value:
          lib.mapAttrs (
            kind:
            { lang, possible }:
            let
              toolType = helpers.nixvimTypes.maybeRaw (lib.types.enum possible);
            in
            lib.mkOption {
              type = lib.types.either toolType (lib.types.listOf toolType);
              default = [ ];
              description = "${kind} tools for ${lang}";
            }
          ) value
        ) tools;
      };
      description = "Configuration for each filetype. Use `all` to match any filetype.";
      default = { };
    };
  };
  config =
    let
      cfg = config.plugins.efmls-configs;

      # Tools that have been selected by the user
      tools = lib.lists.unique (
        lib.filter lib.isString (
          lib.concatLists (
            map (
              {
                linter ? [ ],
                formatter ? [ ],
              }:
              (lib.toList linter) ++ (lib.toList formatter)
            ) (lib.attrValues cfg.setup)
          )
        )
      );

      pkgsForTools =
        let
          partitionFn =
            if cfg.externallyManagedPackages == "all" then
              _: false
            else
              toolName: !(lib.elem toolName cfg.externallyManagedPackages);
          partition = lib.lists.partition partitionFn tools;
        in
        {
          nixvim = partition.right;
          external = partition.wrong;
        };

      nixvimPkgs = lib.lists.partition (v: lib.hasAttr v cfg.toolPackages) pkgsForTools.nixvim;

      mkToolValue =
        kind: opt:
        map (
          tool: if lib.isString tool then helpers.mkRaw "require 'efmls-configs.${kind}.${tool}'" else tool
        ) (lib.toList opt);

      setupOptions =
        (lib.mapAttrs (
          _:
          {
            linter ? [ ],
            formatter ? [ ],
          }:
          (mkToolValue "linters" linter) ++ (mkToolValue "formatters" formatter)
        ) (lib.attrsets.filterAttrs (v: _: v != "all") cfg.setup))
        // {
          "=" =
            (mkToolValue "linters" cfg.setup.all.linter) ++ (mkToolValue "formatters" cfg.setup.all.formatter);
        };
    in
    lib.mkIf cfg.enable {
      extraPlugins = [ cfg.package ];

      # TODO: print the location of the offending options
      warnings = lib.optional ((lib.length nixvimPkgs.wrong) > 0) ''
        Nixvim (plugins.efmls-configs): Following tools are not handled by nixvim, please add them to externallyManagedPackages to silence this:
          ${lib.concatStringsSep " " nixvimPkgs.wrong}
      '';

      plugins.lsp.servers.efm = {
        enable = true;
        extraOptions.settings.languages = setupOptions;
      };

      extraPackages = [ pkgs.efm-langserver ] ++ (map (v: cfg.toolPackages.${v}) nixvimPkgs.right);
    };
}
