{pkgs, ...}: {
  home.packages = with pkgs; [

    alejandra
    statix
    nil

    nix-init
    nix-prefetch-git
  ];
}
