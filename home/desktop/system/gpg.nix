{pkgs, ...}: {
  home.packages = [ pkgs.gnupg pkgs.pinentry-curses ];
}