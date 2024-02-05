_: {
  mainBar = {
    layer = "top";
    position = "top";
    mod = "dock";
    # height = 10;
    modules-left = ["hyprland/workspaces" "hyprland/window"];
    modules-center = ["custom/media"];
    modules-right = [
      "cpu"
      "memory"
      "pulseaudio"
      "clock"
    ];

    "hyprland/workspaces" = {
      "persistent-workspaces" = {
        "1" = ["DP-3"];
        "2" = ["DP-3"];
        "3" = ["DP-3"];
        "4" = ["DP-3"];
      };
      active-only = "false";
      on-scroll-up = "hyprctl dispatch workspace e+1";
      on-scroll-down = "hyprctl dispatch workspace e-1";
      disable-scroll = "false";
      all-outputs = "true";
      format = "{icon}";
      on-click = "activate";
      format-icons = {
        "1" = " ";
        "2" = "";
        "3" = " ";
        "4" = " ";
        "5" = " ";
        "6" = " ";
        "7" = " ";
        "8" = " ";
        "9" = " ";
        "10" = "󰊴 ";
      };
    };

    "custom/media" = {
      "format" = " {}";
      "max-length" = "40";
      "interval" = "1";
      "exec" = "playerctl metadata --format '{{ artist }} - {{ title }}'";
      "on-click" = "playerctl play-pause";
      "on-click-right" = "playerctl stop";
      "smooth-scrolling-threshold" = "4";
      "on-scroll-up" = "playerctl next";
      "on-scroll-down" = "playerctl previous";
    };

    "idle_inhibitor" = {
      format = "{icon}";
      format-icons = {
        activated = " ";
        deactivated = " ";
      };
    };

    "clock" = {
      tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
      format = " {:%H:%M}";
      format-alt = "󰃰 {:%A, %B %d, %Y}";
    };

    "cpu" = {
      format = " {usage}%";
      tooltip = "false";
    };

    "memory" = {
      format = " {}%";
      on-click = "foot -e btop";
    };

    "pulseaudio" = {
      format = "{icon}{volume}%";
      format-bluetooth = "{icon} {volume}%";
      format-bluetooth-muted = "   {volume}%";
      format-muted = "  {format_source}";
      format-icons = {
        headphone = " ";
        hands-free = "󰂑 ";
        headset = "󰂑 ";
        phone = " ";
        portable = " ";
        car = " ";
        default = [" " " " " "];
      };
      tooltip-format = "{desc} {volume}%";
      on-click = "pavucontrol";
    };


    "custom/wmname" = {
      format = "";
      tooltip = "false";
      on-click = "$HOME/.config/rofi/launchers/type-1/launcher.sh";
      on-click-right = "$HOME/.config/hypr/Scripts/screenshot";
      on-click-middle = "$HOME/.config/hypr/Scripts/wallpaper-switch";
    };

    "custom/powermenu" = {
      format = "";
      on-click = "$HOME/.config/rofi/powermenu/powermenu.sh";
    };
  };
}