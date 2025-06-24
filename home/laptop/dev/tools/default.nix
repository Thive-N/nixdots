{pkgs, ...}: {
  imports = [
    ./editors.nix
    # ./docker.nix
    ./virt-manager.nix
  ];
  home.packages = with pkgs; [
    git
  ];
}