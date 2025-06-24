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
    ffmpeg_5
    wl-clipboard

    # Minecraft
    minecraft

    # Audio/Music
    spotify
    easyeffects
    pavucontrol
  ];
}
