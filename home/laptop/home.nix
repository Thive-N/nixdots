{ inputs, config, pkgs, ... }: {
  home = {
    username = "thivejan";
    homeDirectory = "/home/thivejan";
    stateVersion = "22.11";
  };

  imports = [
    ./default.nix
  ];

  programs = {
    home-manager.enable = true;
  };

  fonts.fontconfig.enable = true;

  # Add support for .local/bin
  home.sessionPath = [
    "$HOME/.local/bin"
  ];
}