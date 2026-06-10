{
  config,
  pkgs,
  lib,
  ...
}:
{
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      kdePackages.xdg-desktop-portal-kde
      xdg-desktop-portal-hyprland
    ];
    xdgOpenUsePortal = true;
  };
  
  home.packages = with pkgs; [
      haruna # Open source video player built with Qt/QML and libmpv
      wayland-utils # Wayland utilities
      wl-clipboard # Command-line copy/paste utilities for Wayland

      kdePackages.kcalc # Calculator
      kdePackages.kcharselect # Tool to select and copy special characters from all installed fonts
      kdePackages.kcolorchooser # A small utility to select a color
      kdePackages.kolourpaint # Easy-to-use paint program
      kdePackages.ksystemlog # KDE SystemLog Application
      kdePackages.sddm-kcm # Configuration module for SDDM
      kdePackages.partitionmanager # Optional Manage the disk devices, partitions and file systems on your computer
  ];

  programs = {
    firefox.enable = true;
    quickshell.enable = true;
  };


}