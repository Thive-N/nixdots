{pkgs, ...}: {
  home.packages = with pkgs; [
    maven # Build automation tool for java
    spring-boot-cli
    jdk17
  ];
}