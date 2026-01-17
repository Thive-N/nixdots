{ pkgs, ... }:
{
  imports = [
    ./editors.nix
    ./shell.nix
    # ./docker.nix
    ./kitty
    ./virt-manager.nix
  ];
  home.packages = with pkgs; [
    qbittorrent-nox
    gparted
    git
    acpi
    mpd
    mpv
    file
    tree
    light
    xclip
    unzip
    libnotify
    traceroute
    polkit_gnome
    networkmanager
  ];
}
