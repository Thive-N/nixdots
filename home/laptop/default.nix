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
    ../profiles/languages.nix
  ];

  # TODO: remove?
  programs.neovim.enable = true;
  programs.neovim.viAlias = true;
  programs.neovim.vimAlias = true;
  programs.neovim.withPython3 = true;
  programs.neovim.withRuby = true;



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
    spotify
    easyeffects
    pavucontrol

    # 3D Terraria
    prismlauncher

    # Ultimate hacking tool
    proton-vpn

    qbittorrent-nox
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

    # system monitor
    btop

    #audio visualizer
    cava

    # task manager
    screenfetch

    # c
    gcc
    binutils

    # java
    pkgs.javaPackages.compiler.temurin-bin.jdk-25

    # nix
    alejandra
    statix
    nil
    nix-init
    nix-prefetch-git
  ];
}
