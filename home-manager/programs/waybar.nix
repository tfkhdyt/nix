{
  enable = true;
  systemd = {
    enable = true;
    target = "hyprland-session.target";
  };
  settings = {
    mainBar = {
      margin-top = 5;
      margin-bottom = 12;
      layer = "top";
      position = "top";
      height = 39;
      modules-left = [
        "idle_inhibitor"
        "hyprland/workspaces"
        "hyprland/window"
      ];
      modules-center = [ "clock" ];
      modules-right = [
        "tray"
        # "cpu"
        # "memory"
        "network"
        "backlight"
        "wireplumber"
        "battery"
      ];
      tray = {
        icon-size = 18;
        spacing = 10;
      };
      backlight = {
        device = "intel_backlight";
        format = "{icon}  {percent}%";
        format-icons = [
          "󰃞"
          "󰃟"
          "󰃠"
        ];
        on-scroll-up = "brightnessctl set 1%+ &> /dev/null";
        on-scroll-down = "brightnessctl set 1%- &> /dev/null";
        min-length = 6;
      };
      battery = {
        states = {
          good = 95;
          warning = 30;
          critical = 20;
        };
        format = "{icon} {capacity}%";
        format-charging = "  {capacity}%";
        format-plugged = "  {capacity}%";
        format-alt = "{time} {icon}";
        format-icons = [
          "󰂎"
          "󰁺"
          "󰁻"
          "󰁼"
          "󰁽"
          "󰁾"
          "󰁿"
          "󰂀"
          "󰂁"
          "󰂂"
          "󰁹"
        ];
      };
      clock = {
        format = "󰃭  {:%a, %e %b   %H:%M}";
        tooltip-format = "<tt><small>{calendar}</small></tt>";
        calendar = {
          mode = "month";
          on-scroll = 1;
          on-click-right = "mode";
          format = {
            months = "<span color='#e0def4'><b>{}</b></span>";
            days = "<span color='#ebbcba'><b>{}</b></span>";
            weeks = "<span color='#c4a7e7'><b>W{}</b></span>";
            weekdays = "<span color='#9ccfd8'><b>{}</b></span>";
            today = "<span color='#f6c177'><b><u>{}</u></b></span>";
          };
        };
      };
      network = {
        format-wifi = "   {signalStrength}%";
        format-ethernet = " {signalStrength}%";
        format-linked = "{ifname} (No IP) ";
        format-disconnected = "󰖪  Disconnected";
        tooltip-format-wifi = "Signal Strenght = {signalStrength}% | Down Speed = {bandwidthDownBits}, Up Speed = {bandwidthUpBits}";
        on-click = "alacritty -e nmtui";
        on-click-right = "alacritty -e ping -O 8.8.8.8";
      };
      idle_inhibitor = {
        format = "{icon}";
        format-icons = {
          activated = "󰅶";
          deactivated = "󱄅";
        };
      };
      "hyprland/window" = {
        format = "{title}";
        icon = true;
        icon-size = 20;
        separate-outputs = true;
      };
      cpu = {
        interval = 10;
        format = " {usage}%";
        max-length = 10;
      };
      memory = {
        interval = 30;
        format = " {}%";
        max-length = 10;
      };
      wireplumber = {
        format = "{icon} {volume}%";
        format-muted = "  Muted";
        on-click = "pwvucontrol";
        format-icons = [
          "󰕿"
          "󰖀"
          "󰕾"
        ];
      };
    };
  };
  style = ''
    * {
      border: none;
      border-radius: 10;
      font-family: 'GeistMono NFP';
      font-weight: 500;
      font-size: 15px;
    }

    window#waybar {
      background: transparent;
      padding-bottom: 5px;  /* Ensure there's room for shadows */
    }

    window#waybar.hidden {
      opacity: 0.2;
    }

    tooltip {
      background: #313244;
      border-width: 2px;
      border-style: solid;
      border-color: #6c7086;
    }

    #workspaces {
      padding: 0;
      margin: 6px 8px 6px 8px;  /* Match the other widgets' margins */
      background: transparent;   /* Remove background since buttons have their own */
    }

    #workspaces button {
      background: #fab387;      /* Match the other widgets' background */
      color: #1e1e2e;          /* Match the other widgets' text color */
      font-size: 16px;
      border-radius: 5px;      /* Match the other widgets' border-radius */
      padding: 5px 10px;       /* Match the other widgets' padding */
      margin: 0 4px;           /* Add some space between workspace buttons */
      box-shadow: 5px 5px #1e1e2e;  /* Match the other widgets' shadow */
      border: none;
      transition-property: color, background-color, border-color, text-decoration-color, fill, stroke, opacity, box-shadow, transform, filter, backdrop-filter;
      transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
      transition-duration: 150ms;
    }

    #workspaces button.active {
      background: #e5966d;     /* Use the darker version for active */
      color: #1e1e2e;
      box-shadow: 3px 3px #1e1e2e;
    }

    #workspaces button.urgent {
      background: #f38ba8;     /* Keep the urgent color */
      color: #1e1e2e;
    }

    #workspaces button:hover {
      background: #e5966d;     /* Match the other widgets' hover state */
      color: #1e1e2e;
      box-shadow: 3px 3px #1e1e2e;
    }

    #cpu {
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      margin-bottom: 0px;
      padding-right: 10px;
      border-radius: 10px;
      transition: none;
      color: #1f2335;
      background: #FFBEA3;
    }

    #memory {
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      margin-bottom: 0px;
      padding-right: 10px;
      border-radius: 10px;
      transition: none;
      color: #1f2335;
      background: #BFE2FF;
    }

    #idle_inhibitor {
      margin: 6px 8px 6px 8px;  /* Consistent margins all around */
      padding-left: 5px;
      padding-right: 5px;
      border: none;
      color: #1e1e2e;
      border-radius: 5px;
      box-shadow: 5px 5px #1e1e2e;
      background: #fab387;
    }

    #tray,
    #window,
    #idle_inhibitor,
    #clock,
    #network,
    #backlight,
    #wireplumber,
    #battery {
      margin: 6px 8px 6px 8px;  /* Consistent margins all around */
      padding-left: 10px;
      padding-right: 10px;
      border: none;
      color: #1e1e2e;
      border-radius: 5px;
      box-shadow: 5px 5px #1e1e2e;
      background: #fab387;
      transition-property: color, background-color, border-color, text-decoration-color, fill, stroke, opacity, box-shadow, transform, filter, backdrop-filter;
      transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
      transition-duration: 150ms;
    }

    #window:hover,
    #idle_inhibitor:hover,
    #clock:hover,
    #network:hover,
    #backlight:hover,
    #wireplumber:hover,
    #battery:hover,
    #battery.charging:hover,
    #battery.plugged:hover {
      background: #e5966d;
      box-shadow: 3px 3px #1e1e2e;
    }

    #battery.charging,
    #battery.plugged {
      color: #1e1e2e;
      background: #fab387;
    }

    #battery.critical:not(.charging) {
      background-color: #f38ba8;
      color: #1e1e2e;
      animation-name: blink;
      animation-duration: 0.5s;
      animation-timing-function: linear;
      animation-iteration-count: infinite;
      animation-direction: alternate;
    }

    @keyframes blink {
      to {
        background-color: #1e1e2e;
        color: #eba0ac;
      }
    }
  '';
}
