{pkgs, ...}: {
  programs.firefox = {
    enable = true;
  };
  programs.vscode = {
    enable = true;
  };

  home.packages = with pkgs; [
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