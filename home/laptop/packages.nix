{
  inputs,
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # Office + PDF readers

    # Browsers
    firefox

    # Socials
    discord

    # Note taking
    obsidian

    # Rice
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
  ];
}
