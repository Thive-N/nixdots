{
  pkgs,
  lib,
  config,
  osConfig,
  ...
}:
with lib; let
  waybar_config = import ./config.nix {inherit osConfig config lib pkgs;};
  waybar_style = import ./styles.nix {inherit (config) colorscheme;};
in {
  home.packages = with pkgs; [
    python39Packages.requests
  ];
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    settings = waybar_config;
    style = waybar_style;
  };
}