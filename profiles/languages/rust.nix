{
  config,
  pkgs,
  lib,
  ...
}:
{
  home.packages = with pkgs; [
    # rust
    lldb
    rustc
    cargo
    rustfmt
    rust-analyzer
  ]; 
}