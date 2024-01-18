{
  config,
  pkgs,
  lib,
  ...
}: {
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';

    shellAbbrs = {
      ls = "eza -la";
      snrs = "sudo nixos-rebuild switch";
    };
  }
}