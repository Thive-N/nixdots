{
  config,
  pkgs,
  lib,
  ...
}:
{
  home.packages = with pkgs; [
    # java
    pkgs.javaPackages.compiler.temurin-bin.jdk-25
  ]; 
}