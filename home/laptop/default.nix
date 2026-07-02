{
  config,
  pkgs,
  lib,
  ...
}:
{
  imports = [
    ../profiles/shell.nix
    ../profiles/vscode.nix
    ../profiles/languages/rust.nix
    ../profiles/languages/c.nix
    ../profiles/languages/nix.nix
    ../profiles/languages/java.nix
  ];

  programs = {
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
    easyeffects
    pavucontrol

    # 3D Terraria
    prismlauncher

    virt-manager
    gparted
    git
    acpi
    mpd
    mpv
    file
    tree
    xclip
    unzip
    libnotify
    traceroute
    polkit_gnome
    networkmanager
    nixd

    # encryption
    cryptsetup

    btop
    cava
    screenfetch
  ];
}
