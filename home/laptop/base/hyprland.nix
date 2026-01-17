{
  inputs,
  config,
  pkgs,
  osConfig,
  lib,
  ...
}:
{
  home.packages = with pkgs; [ swww ];
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;

    settings = {
      exec = [
        "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        "dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        "pkill waybar & sleep 0.5 && waybar"
      ];
      exec-once = "swww init && swww img ~/Pictures/wallpapers/1.jpg";

      # Input config
      input = {
        kb_layout = "us";

        follow_mouse = 1;

        touchpad = {
          natural_scroll = "false";
        };

        sensitivity = 0;
      };

      general = {

        gaps_in = 5;
        gaps_out = 20;
        border_size = 2;

        layout = "dwindle";
      };

      animations = {
        enabled = "yes";

        bezier = "ease,0.4,0.02,0.21,1";

        animation = [
          "windows, 1, 3.5, ease, slide"
          "windowsOut, 1, 3.5, ease, slide"
          "border, 1, 6, default"
          "fade, 1, 3, ease"
          "workspaces, 1, 3.5, ease"
        ];
      };

      dwindle = {
        pseudotile = "yes";
        preserve_split = "yes";
      };

      gestures = {
        workspace_swipe = "false";
      };

      "$mainMod" = "SUPER";

      bind = [
        "$mainMod, G, fullscreen"
        "$mainMod, RETURN, exec, kitty"
        "$mainMod SHIFT, Q, killactive,"
        "$mainMod SHIFT, M, exit,"
        "$mainMod, V, togglefloating,"
        "$mainMod, D, exec, wofi --show drun"
        "$mainMod, R, exec, rofiWindow"
        "$mainMod, P, pseudo," # dwindle
        "$mainMod, J, togglesplit," # dwindle

        "$mainMod SHIFT, S, exec, grim -g \"$(slurp)\" - | wl-copy"
        ", Print, exec, grim -g \"$(slurp)\""

        # Functional keybinds
        # bind =,XF86AudioMicMute,exec,pamixer --default-source -t
        # bind =,XF86MonBrightnessDown,exec,light -U 20
        # bind =,XF86MonBrightnessUp,exec,light -A 20
        # bind =,XF86AudioMute,exec,pamixer -t
        # bind =,XF86AudioLowerVolume,exec,pamixer -d 10
        # bind =,XF86AudioRaiseVolume,exec,pamixer -i 10
        # bind =,XF86AudioPlay,exec,playerctl play-pause
        # bind =,XF86AudioPause,exec,playerctl play-pause

        # to switch between windows in a floating workspace
        "SUPER,Tab,cyclenext,"
        "SUPER,Tab,bringactivetotop,"

        # Move focus with mainMod + arrow keys
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        # Switch workspaces with mainMod + [0-9]
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        # Scroll through existing workspaces with mainMod + scroll
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"
      ];
    };
  };
}
