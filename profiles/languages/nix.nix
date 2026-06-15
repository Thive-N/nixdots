{
  config,
  pkgs,
  lib,
  ...
}:
{
  home.packages = with pkgs; [
    # nix
    alejandra
    statix
    nil
    nix-init
    nix-prefetch-git
  ]; 
}