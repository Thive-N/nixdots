{
  config,
  pkgs,
  lib,
  ...
}:
{
  programs = {
    # ls replacement
    eza = {
      enable = true;
    };

    # terminal
    alacritty = {
      enable = true;
      settings = {
        font.size = 11;
      };
    };

    # shell
    fish = {
      enable = true;
      interactiveShellInit = ''
        set fish_greeting # Disable greeting
      '';

      shellAbbrs = {
        ls = "eza -la";
        sl = "ls";
      };
    };
  };
}
