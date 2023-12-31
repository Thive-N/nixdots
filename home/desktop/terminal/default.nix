{ config, lib, pkgs, ... }: {
  home.packages = with pkgs; [neofetch eza grim slurp btop playerctl];

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
