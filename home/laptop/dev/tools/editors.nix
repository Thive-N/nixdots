{ config, pkgs, lib, ... }:
{
  programs.neovim.enable = true;
  programs.neovim.viAlias = true;
  programs.neovim.vimAlias = true;

  programs.vscode = {
  enable = true;
  extensions = with pkgs.vscode-extensions; [
    dracula-theme.theme-dracula
    yzhang.markdown-all-in-one
  ];
};
}
