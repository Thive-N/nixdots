{ pkgs, ...}: {
  programs.vscode = {
    enable = true;  
    extensions = with pkgs.vscode-extensions; [
      yzhang.markdown-all-in-one
      rust-lang.rust-analyzer
    ];
  };
}
