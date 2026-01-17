{ pkgs, ... }:
{
  programs = {
    firefox.enable = true;
    vscode.enable = true;
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

    # Browsers
    firefox

    # Socials
    discord

    # Note taking
    obsidian

    # Plentiful fields of rice
    swww
    dunst
    bemenu
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
    lunar-client

    # Ultimate hacking tool
    protonvpn-gui
  ];
}
