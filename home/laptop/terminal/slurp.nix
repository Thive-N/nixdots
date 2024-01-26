{ config, lib, pkgs, ... }: {
  home.packages = [pkgs.slurp];
}
