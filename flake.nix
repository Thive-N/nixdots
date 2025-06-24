{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, hyprland, home-manager}: 
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
      };
      lib = nixpkgs.lib;

    in {
      nixosConfigurations = {
        desktop = lib.nixosSystem {
          inherit system;
          modules = [ 
            ./hosts/desktop/configuration.nix

            home-manager.nixosModules.home-manager {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.thivejan = ./home/desktop/home.nix;
            }

            hyprland.nixosModules.default {
              programs.hyprland.enable = true;
            }
          ];
        };

        laptop = lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/laptop/configuration.nix

            home-manager.nixosModules.home-manager {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.thivejan = ./home/laptop/home.nix;
            }
            hyprland.nixosModules.default {
              programs.hyprland.enable = true;
            }
          ];
        };
      };
    };    
}
