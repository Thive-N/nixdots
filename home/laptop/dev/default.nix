{
  config,
  pkgs,
  lib,
  ...
}:
{
  imports = [
    ./editors.nix
    ./shell.nix
    ./kitty
    ./languages.nix
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
    cryptsetup
  ];
}
