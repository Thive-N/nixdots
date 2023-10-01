{ inputs, config, pkgs, osConfig, lib, ... } : {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    enableNvidiaPatches = true;
    settings = {
      input = {
        kb_layout = "br";
        kb_variant = "";
        kb_model = "";
        kb_options = "";
        kb_rules = "";
        follow_mouse = 1;
        repeat_delay = 160;
        repeat_rate = 25;
        numlock_by_default = 1;
        accel_profile = "flat";
        sensitivity = 0;
        force_no_accel = 1;
      };

      general = {
        gaps_in = 5;
        gaps_out = 20;
        border_size = 2;
        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";
        layout = "dwindle";
        apply_sens_to_raw = 1; # whether to apply the sensitivity to raw input
      };

      decoration = {
        rounding = 10;
        drop_shadow = true;
        shadow_range = 4;
        shadow_render_power = 3;
        "col.shadow" = "rgba(1a1a1aee)";
        blur = {
          enabled = true;
          size = 3;
          passes = 1;
          new_optimizations = true;
        };
      };

      animations = {
        enabled = true;
        bezier = [
          "myBezier, 0.05, 0.9, 0.1, 1.05"
        ];
        animation = [
          "windowsIn, 1, 7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "fade, 1, 7, default"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "workspaces, 1, 6, default"
        ];
      };

      dwindle = {
        pseudotile = true; # enable pseudotiling on dwindle
        preserve_split = true;
      };

      gestures = {
        workspace_swipe = false;
      };

      debug = {
        damage_tracking = 2;
      };

      bind = [
        "SUPER SHIFT, Q, killactive, "
        "SUPER, RETURN, exec, alacritty"
        "SUPER SHIFT, M, exit,"

        "SUPER,left,movefocus,l"
        "SUPER,down,movefocus,r"
        "SUPER,up,movefocus,u"
        "SUPER,right,movefocus,d"

        "SUPER,1,workspace,1"
        "SUPER,2,workspace,2"
        "SUPER,3,workspace,3"
        "SUPER,4,workspace,4"
        "SUPER,5,workspace,5"
        "SUPER,6,workspace,6"
        "SUPER,7,workspace,7"
        "SUPER,8,workspace,8"
        "SUPER,9,workspace,9"
        "SUPER,0,workspace,10"

        "SUPER SHIFT, 1, movetoworkspacesilent, 1"
        "SUPER SHIFT, 2, movetoworkspacesilent, 2"
        "SUPER SHIFT, 3, movetoworkspacesilent, 3"
        "SUPER SHIFT, 4, movetoworkspacesilent, 4"
        "SUPER SHIFT, 5, movetoworkspacesilent, 5"
        "SUPER SHIFT, 6, movetoworkspacesilent, 6"
        "SUPER SHIFT, 7, movetoworkspacesilent, 7"
        "SUPER SHIFT, 8, movetoworkspacesilent, 8"
        "SUPER $mainMod SHIFT, 9, movetoworkspacesilent, 9"
        "SUPER $mainMod SHIFT, 0, movetoworkspacesilent, 10"

        "SUPER,o,exec, obsidian"

      ];


    };
  };
}
