{pkgs, ...}: {
  home.packages = with pkgs; [
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