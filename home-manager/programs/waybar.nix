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
        format = "{icon} {percent}%";
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
        format-charging = " {capacity}%";
        format-plugged = " {capacity}%";
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
        format = "󰃭 {:%a, %e %b  %H:%M}";
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
        format-wifi = "󰖩 {signalStrength}%";
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
        format-muted = " Muted";
        on-click = "pwvucontrol";
        format-icons = [
          ""
          ""
          ""
        ];
      };
    };
  };
  style = ''
    * {
      border: none;
      border-radius: 10;
      font-family: 'JetBrainsMono NFP';
      font-weight: 600;
      font-size: 15px;
      min-height: 10px;
    }

    window#waybar {
      background: transparent;
    }

    window#waybar.hidden {
      opacity: 0.2;
    }

    #window {
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      padding-right: 10px;
      border-radius: 10px;
      transition: none;
      color: #EBDBB2;
      background-color: #D65D0E;
    }

    tooltip {
      background: #24283b;
      border-width: 2px;
      border-style: solid;
      border-color: #565f89;
    }

    #workspaces {
      padding: 0;
      margin-top: 6px;
      margin-left: 8px;
      font-size: 4px;
      margin-bottom: 0px;
      background: #282828;
    }

    #workspaces button {
      background: #282828;
      color: #EBDBB2;
      font-size: 16px;
      border-radius: 10px;
      padding-left: 10px;
      padding-right: 10px;
    }

    #workspaces button.active {
      background: #458588;
      color: #282828;
    }

    #workspaces button.urgent {
      background-color: #EBDBB2;
      color: #756D59;
    }

    #workspaces button:hover {
      background-color: #EBDBB2;
      color: #458588;
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
      font-size: 24px;
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      padding-right: 10px;
      border-radius: 10px;
      transition: none;
      color: #EBDBB2;
      background: #282828;
    }

    #battery {
      margin-top: 6px;
      margin-left: 8px;
      margin-right: 8px;
      padding-left: 10px;
      padding-right: 10px;
      margin-bottom: 0px;
      border-radius: 10px;
      transition: none;
      color: #EBDBB2;
      background: #CC241D;
    }

    #battery.charging,
    #battery.plugged {
      color: #EBDBB2;
      background: #CC241D;
    }

    #battery.critical:not(.charging) {
      background-color: #FFB6C1;
      color: #1f2335;
      animation-name: blink;
      animation-duration: 0.5s;
      animation-timing-function: linear;
      animation-iteration-count: infinite;
      animation-direction: alternate;
    }

    @keyframes blink {
      to {
        background-color: #F5F5DC;
        color: #FFB6C1;
      }
    }

    #wireplumber {
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      padding-right: 10px;
      margin-bottom: 0px;
      border-radius: 10px;
      transition: none;
      color: #EBDBB2;
      background: #B16286;
    }

    #backlight {
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      padding-right: 10px;
      margin-bottom: 0px;
      border-radius: 10px;
      transition: none;
      color: #282828;
      background: #D79921;
    }

    #network {
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      padding-right: 10px;
      margin-bottom: 0px;
      border-radius: 10px;
      transition: none;
      color: #282828;
      background: #689D6A;
    }

    #tray {
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      margin-bottom: 0px;
      padding-right: 10px;
      border-radius: 10px;
      transition: none;
      color: #949494;
      background: #282828;
    }

    #clock {
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      padding-right: 10px;
      margin-bottom: 0px;
      border-radius: 10px;
      transition: none;
      color: #282828;
      background: #EBDBB2;
    }
  '';
}
