{pkgs, ...}: {
  imports = [
    ./editors.nix
    # ./docker.nix
    ./kitty
    ./virt-manager.nix
  ];
  home.packages = with pkgs; [
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
