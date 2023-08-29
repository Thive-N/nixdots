{pkgs, ...}: {
  home.packages = with pkgs; [
    gcc
    jdk8
    beautysh 
    gnupatch
  ];
}
