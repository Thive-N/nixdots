{pkgs, ...}: {
  home.packages = with pkgs; [
    # c
    gcc
    binutils

    # java
    jdk8

    # python
    poetry
    (python311.withPackages ( ps:
      with ps; [
        pip
        black # Python formatter
        pynvim
        flake8 # Linter for Python
        pypresence # Discord Rich Presence
        jupyter # notebook
        numpy # math library
      ]))
    
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

    # js/ts
    nodejs
    node2nix
    typescript
    tailwindcss
    nodePackages.npm
    nodePackages_latest.eslint_d
    nodePackages_latest.prettier
    nodePackages_latest.typescript-language-server

    
  ];
}
