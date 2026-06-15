{
  config,
  pkgs,
  lib,
  ...
}:
{
  home.packages = with pkgs; [
    # c
    gcc
    binutils
  ]; 
}