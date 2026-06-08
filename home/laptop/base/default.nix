{ pkgs, ... }:
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

  programs = {
    firefox.enable = true;
    quickshell.enable = true;
  };

  home.packages = with pkgs; [
    # blender
    blender

    # light
    brightnessctl

    # jellyfin
    jellyfin
    jellyfin-ffmpeg
    jellyfin-web

    # git frontend
    gitkraken

    # password manager
    keepassxc

    # Socials
    discord

    # Note taking
    obsidian

    # Plentiful fields of rice
    cmatrix

    #Capture
    obs-studio
    grim
    slurp
    wl-clipboard

    # Audio/Music
    spotify
    easyeffects
    pavucontrol

    # 3D Terraria
    prismlauncher

    # Ultimate hacking tool
    protonvpn-gui
  ];
}
