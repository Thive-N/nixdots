<h1 align="center">
<a href='#'><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/macchiato.png" width="600px"/></a>

<h1 align = center><b>❄️ NixOS dotfiles ❄️</b></h1>
<h2 align="center">My NixOS system configuration.</h2>

-   Rebuild and switch to change the system configuration (in the configuration directory):

```
rebuild
```

OR

```
sudo nixos-rebuild switch --flake '.#desktop'
```

-   Connect to internet.

```
iwctl --passphrase [passphrase] station [device] connect [SSID]
```

## Installation

Clone the repo and cd into it:

```bash
git clone https://github.com/Thive-N/nixdots ~/flake && cd ~/flake
```

Create a hardware configuration for your system:

```bash
sudo nixos-generate-config
```

You can add or create your own output in flake.nix through the following template:

```nix
nixosConfigurations = {
    #                                  Architecture   Hostname
    desktop = nixpkgs.lib.nixosSystem  "x86_64-linux" "desktop";
    # laptop = nixpkgs.lib.nixosSystem "x86_64-linux" "laptop";

};
```

edit

```
flake.nix
home/desktop/terminal/shell/tools/git.nix
home/desktop/home.nix
home/desktop/services/wayland/waybar/scripts/power-menu/powermenu.sh
```

to match your username and git profile

rebuild your configuration with:

```bash
sudo nixos-rebuild switch --flake .#desktop
```
