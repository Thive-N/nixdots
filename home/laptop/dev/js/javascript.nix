{pkgs, ...}: {
  home.packages = with pkgs; [
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
