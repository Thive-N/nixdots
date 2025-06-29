{
  config,
  pkgs,
  lib,
  ...
}: {
  # ls replacement
  programs.eza = {
    enable = true;
  };
  
  # terminal
  programs.alacritty = {
    enable = true;
    settings = {
    	font.size = 11;
    };
  };

  imports = [
    ./kitty
  ];

  # shell
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';

    shellAbbrs = {
      ls = "eza -la";
    };
  };

  home.packages = with pkgs; [
    btop
    cava
];
}
