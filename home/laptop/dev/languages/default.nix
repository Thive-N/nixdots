{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # c
    gcc
    binutils

    # java
    jdk8

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
    claude-code

    # rust
    lldb
    rustc
    cargo
    rustfmt
    rust-analyzer

    # js/ts
    node2nix
    typescript
    tailwindcss
    nodePackages.npm
    nodePackages_latest.eslint_d
    nodePackages_latest.prettier
    nodePackages_latest.typescript-language-server

  ];
}
