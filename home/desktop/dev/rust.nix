{pkgs, ...}: {
  home.packages = with pkgs; [
    cargo
    rustfmt
    direnv
  ];
}