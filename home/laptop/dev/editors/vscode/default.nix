{ config, pkgs, lib, ... }:
{
  programs.vscode = {
  enable = true;
  extensions = with pkgs.vscode-extensions; [
    dracula-theme.theme-dracula
    yzhang.markdown-all-in-one
  ];
};
}
