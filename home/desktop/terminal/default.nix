{ config, lib, pkgs, ... }: {
  home.packages = [pkgs.neofetch pkgs.eza];

  programs.fish = {
    enable = true;
    interactiveShellInit = '''';
    shellAliases = {
      ls = "eza -la";
    }; 
  };

  programs.alacritty = {
    enable = true;
    settings = {
    	font.size = 11;
    };
  };

  programs.neovim = {
    enable = true;
    extraConfig = ''
      set number relativenumber
    '';
  };


}
