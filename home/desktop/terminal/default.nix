{ config, lib, pkgs, ... }: {
  home.packages = [pkgs.neofetch pkgs.eza pkgs.grim pkgs.slurp pkgs.btop];

  programs.fish = {
    enable = true;
    interactiveShellInit = '''';
    shellAliases = {
      ls = "eza -la";
      snrs = "sudo nixos-rebuild switch --flake .#desktop";
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
