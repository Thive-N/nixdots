{pkgs, ...}: {
  home.packages = with pkgs; [kitty];
  xdg.configFile."kitty/kitty.conf".text = import ./kitty.nix;
  xdg.configFile."kitty/themes/mocha.conf".text = import ./mocha.nix;
  xdg.configFile."kitty/themes/macchiato.conf".text = import ./macchiato.nix;
}