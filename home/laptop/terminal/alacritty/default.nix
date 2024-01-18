{ config, lib, pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
    	font.size = 11;
    };
  };
}
