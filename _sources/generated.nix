# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  alternate-toggler-nvim = {
    pname = "alternate-toggler-nvim";
    version = "fe798aa9e4af26c9e33ca1add9d255209d03b108";
    src = fetchFromGitHub {
      owner = "rmagatti";
      repo = "alternate-toggler";
      rev = "fe798aa9e4af26c9e33ca1add9d255209d03b108";
      fetchSubmodules = false;
      sha256 = "sha256-7t0UJ5pIa4BAECf09EodyrXqii9nYsq2n7NDKCoXw78=";
    };
    date = "2023-08-17";
  };
  boo-nvim = {
    pname = "boo-nvim";
    version = "8384bc02d92896781c6d6c79af1b0ffadc23c728";
    src = fetchFromGitHub {
      owner = "LukasPietzschmann";
      repo = "boo.nvim";
      rev = "8384bc02d92896781c6d6c79af1b0ffadc23c728";
      fetchSubmodules = false;
      sha256 = "sha256-FSPJHWpvkw8wY1h+h4pdpS9ChyZOO+/XQqmPvm0iKSI=";
    };
    date = "2024-03-10";
  };
  buffer-manager-nvim = {
    pname = "buffer-manager-nvim";
    version = "9cd0e34522d96d08817828f1e9fd3379f27efb73";
    src = fetchFromGitHub {
      owner = "j-morano";
      repo = "buffer_manager.nvim";
      rev = "9cd0e34522d96d08817828f1e9fd3379f27efb73";
      fetchSubmodules = false;
      sha256 = "sha256-YL+ypkQAkEbhbOZedD+9frr+5nMBXjEnLCYroeLGNYM=";
    };
    date = "2024-01-18";
  };
  conceal-nvim = {
    pname = "conceal-nvim";
    version = "1aff9fc5d1157aef1c7c88b6df6d6db21268d00a";
    src = fetchFromGitHub {
      owner = "Jxstxs";
      repo = "conceal.nvim";
      rev = "1aff9fc5d1157aef1c7c88b6df6d6db21268d00a";
      fetchSubmodules = false;
      sha256 = "sha256-4Nhcjk89WD0Kw9iD0YsZ202tRTWlhFHxhVp2kyoju/Y=";
    };
    date = "2023-12-05";
  };
  eagle-nvim = {
    pname = "eagle-nvim";
    version = "177957f60f6ca9c38b92328c8a51453f88a9d098";
    src = fetchFromGitHub {
      owner = "soulis-1256";
      repo = "eagle.nvim";
      rev = "177957f60f6ca9c38b92328c8a51453f88a9d098";
      fetchSubmodules = false;
      sha256 = "sha256-fIcvYEzpERqZH5Xh8NQxrY3px4sAQO3V9De5jNTl3bQ=";
    };
    date = "2024-02-25";
  };
  hlchunk-nvim = {
    pname = "hlchunk-nvim";
    version = "882d1bc86d459fa8884398223c841fd09ea61b6b";
    src = fetchFromGitHub {
      owner = "shellRaining";
      repo = "hlchunk.nvim";
      rev = "882d1bc86d459fa8884398223c841fd09ea61b6b";
      fetchSubmodules = false;
      sha256 = "sha256-fvFvV7KAOo7xtOCjhGS5bDUzwd10DndAKs3++dunED8=";
    };
    date = "2023-12-11";
  };
  lsp-lens-nvim = {
    pname = "lsp-lens-nvim";
    version = "48bb1a7e271424c15f3d588d54adc9b7c319d977";
    src = fetchFromGitHub {
      owner = "VidocqH";
      repo = "lsp-lens.nvim";
      rev = "48bb1a7e271424c15f3d588d54adc9b7c319d977";
      fetchSubmodules = false;
      sha256 = "sha256-zj/Gn/40jnDNh05OFc23LNNuFn1PnIAUDfPquEWpAlk=";
    };
    date = "2023-12-07";
  };
  modes-nvim = {
    pname = "modes-nvim";
    version = "4035a46aaabe43faf1b54740575af9dd5bb03809";
    src = fetchFromGitHub {
      owner = "mvllow";
      repo = "modes.nvim";
      rev = "4035a46aaabe43faf1b54740575af9dd5bb03809";
      fetchSubmodules = false;
      sha256 = "sha256-Kd2hf5obrPvCVLtRcFjLd75byyrB2o3uYCSEMW6IeCc=";
    };
    date = "2023-12-10";
  };
  satellite-nvim = {
    pname = "satellite-nvim";
    version = "40eb89743e3439c66192abfc31eb3280622a5d3c";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "satellite.nvim";
      rev = "40eb89743e3439c66192abfc31eb3280622a5d3c";
      fetchSubmodules = false;
      sha256 = "sha256-Ml4TjuothhuWaYPcupKWUG1HUw/oJ1zfUzZRCf+pI/4=";
    };
    date = "2024-02-16";
  };
  savior-nvim = {
    pname = "savior-nvim";
    version = "1df5afb930a3a97aec87bbb99b5063e165adc4b0";
    src = fetchFromGitHub {
      owner = "willothy";
      repo = "savior.nvim";
      rev = "1df5afb930a3a97aec87bbb99b5063e165adc4b0";
      fetchSubmodules = false;
      sha256 = "sha256-Qs7SXfm0kS0Tlmp3uSQYZMSUp0vsYiUhdqzbPC1Srvg=";
    };
    date = "2024-02-02";
  };
  statusline-lua = {
    pname = "statusline-lua";
    version = "398881da0a6dad3a5fe0f0d3fbafe1280cb1ec43";
    src = fetchFromGitHub {
      owner = "pupbrained";
      repo = "statusline.lua";
      rev = "398881da0a6dad3a5fe0f0d3fbafe1280cb1ec43";
      fetchSubmodules = false;
      sha256 = "sha256-F6VurC1Ukd3CwSdnTZX/9zjIL2VqojnqCnEDAJWn+os=";
    };
    date = "2023-10-31";
  };
  surround-ui-nvim = {
    pname = "surround-ui-nvim";
    version = "65c25088e8dbd1e098245de007498b93c694afb0";
    src = fetchFromGitHub {
      owner = "roobert";
      repo = "surround-ui.nvim";
      rev = "65c25088e8dbd1e098245de007498b93c694afb0";
      fetchSubmodules = false;
      sha256 = "sha256-7RrfLC1pEXstizHb1e0xy9WZS+YkcGnnEIQmh2TFZgk=";
    };
    date = "2023-09-09";
  };
  triptych-nvim = {
    pname = "triptych-nvim";
    version = "57d144d9f516fbc118675695fc0f07edf1cbe58b";
    src = fetchFromGitHub {
      owner = "simonmclean";
      repo = "triptych.nvim";
      rev = "57d144d9f516fbc118675695fc0f07edf1cbe58b";
      fetchSubmodules = false;
      sha256 = "sha256-Vbi0Hg1McwaTW4YZRSCJm5N1SnWjAHFsSDlxkQKmsN8=";
    };
    date = "2024-02-28";
  };
  ultimate-autopair-nvim = {
    pname = "ultimate-autopair-nvim";
    version = "6ecf7461d44513af89f8257f057fcc99e9297612";
    src = fetchFromGitHub {
      owner = "altermo";
      repo = "ultimate-autopair.nvim";
      rev = "6ecf7461d44513af89f8257f057fcc99e9297612";
      fetchSubmodules = false;
      sha256 = "sha256-ZyScowo3ATvvWUDwtJHF09vdLKC4oTJgvzxS9ZtLsgU=";
    };
    date = "2024-02-22";
  };
  veil-nvim = {
    pname = "veil-nvim";
    version = "88d5fd48e178a9996985e534cdeded0b2a421881";
    src = fetchFromGitHub {
      owner = "willothy";
      repo = "veil.nvim";
      rev = "88d5fd48e178a9996985e534cdeded0b2a421881";
      fetchSubmodules = false;
      sha256 = "sha256-nvYU6CWt9O45yQvDxqcXpwVVK4AsRiG/iu7U4twhEMY=";
    };
    date = "2023-12-25";
  };
  vim-reason-plus = {
    pname = "vim-reason-plus";
    version = "c11a2940f8f3e3915e472c366fe460b0fe008bac";
    src = fetchFromGitHub {
      owner = "reasonml-editor";
      repo = "vim-reason-plus";
      rev = "c11a2940f8f3e3915e472c366fe460b0fe008bac";
      fetchSubmodules = false;
      sha256 = "sha256-JDeWsuFNcAuN6HG41OT3LE3cFCBAccYZFsEZ+Ttnp+8=";
    };
    date = "2020-02-19";
  };
}
