{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # c
    gcc
    binutils

    # java
    pkgs.javaPackages.compiler.temurin-bin.jdk-25

    (python3.withPackages (
      python-pkgs: with python-pkgs; [
        pandas
        requests
        numpy
        bokeh
        matplotlib
      ]
    ))

    # nix
    alejandra
    statix
    nil
    nix-init
    nix-prefetch-git

    # rust
    lldb
    rustc
    cargo
    rustfmt
    rust-analyzer

  ];
}
