{inputs, ...}: let
  inherit (inputs.nix-colors) colorSchemes;
  catppuccin-mocha = (import ./palettes/catppuccin-mocha.nix).colorscheme;
  catppuccin-macchiato = (import ./palettes/catppuccin-macchiato.nix).colorscheme;
in {
  imports = [
    inputs.nix-colors.homeManagerModule
    ./gtk.nix
  ];

  # colorscheme = catppuccin-mocha;
  colorscheme = catppuccin-macchiato;
}
