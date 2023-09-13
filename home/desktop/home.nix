{ inputs, config, nix-colors, pkgs, ... }: {
  home = {
    username = "USERNAME";
    homeDirectory = "/home/" + home.username;
    stateVersion = "22.11";
  };

  programs = {
    home-manager.enable = true;
  };

  # Imports
  imports = [
    ./dev
    ./system
    ./themes
    ./services
    ./terminal
    ./graphical
  ];

  # Overlays
  nixpkgs.overlays = [
    (self: super: {
      discord = super.discord.overrideAttrs (
        _: {
          src = builtins.fetchTarball {
            url = "https://discord.com/api/download?platform=linux&format=tar.gz";
          };
        }
      );
    })
    (import (builtins.fetchTarball {
      url = "https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz";
    }))
  ];

    # Add NUR
  nixpkgs.config.packageOverrides = pkgs: {
    nur =
      import
      (builtins.fetchTarball {
        url = "https://github.com/nix-community/NUR/archive/master.tar.gz";
        sha256 = "sha256:00g8l9ayyccqhs73zcjdbb0nw5bgljhqhmimykrl75p0ww7ha6cn";
      })
      {inherit pkgs;};
  };

  nixpkgs.config.allowUnfreePredicate = pkg: true;
  fonts.fontconfig.enable = true;

  # Add support for .local/bin
  home.sessionPath = [
    "$HOME/.local/bin"
  ];
}
