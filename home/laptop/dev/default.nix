{
  config,
  pkgs,
  lib,
  ...
}:
{
  imports = [
    ./shell.nix
    ./kitty
  ];

  programs.neovim.enable = true;
  programs.neovim.viAlias = true;
  programs.neovim.vimAlias = true;

  programs.vscode = {
    enable = true;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      dracula-theme.theme-dracula
      yzhang.markdown-all-in-one
    ];
  };

  home.packages = with pkgs; [
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

    # rust
    lldb
    rustc
    cargo
    rustfmt
    rust-analyzer
  ];
}
