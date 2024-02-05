{pkgs, ...}: {
  home.packages = with pkgs; [
    logmein-hamachi
    haguichi
  ];
}