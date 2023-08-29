{pkgs, ...}: {
  home.packages = with pkgs; [
    cmake
    gnumake
    
    astyle
    cpplint
    clang-tools
    vscode-extensions.vadimcn.vscode-lldb
    uncrustify
  ];
}
