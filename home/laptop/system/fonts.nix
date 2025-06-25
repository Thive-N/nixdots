{pkgs, ...}: {
  home.packages = with pkgs; [
    nerdfix
    noto-fonts
    dejavu_fonts
    font-awesome
    fira-code-symbols
    powerline-symbols
    material-design-icons
    (nerd-fonts.override {fonts = ["FiraCode" "FiraMono" "JetBrainsMono"];})
  ];
}