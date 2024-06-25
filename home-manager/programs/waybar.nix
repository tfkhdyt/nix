{
  enable = true;
  systemd.enable = true;
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
      modules-center = ["clock"];
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
      color: #1f2335;
      background-color: #FFCCB6;
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
      background: #1f2335;
      transition: none;
    }

    #workspaces button {
      transition: none;
      background: #1f2335;
      color: #B2E4D5;
      font-size: 16px;
      border-radius: 10px;
      padding-left: 10px;
      padding-right: 10px;
    }

    #workspaces button.active {
      background: #B2E4D5;
      color: #1f2335;
    }

    #workspaces button.urgent {
      background-color: #c53b53;
      color: #b4f9f8;
    }

    #workspaces button:hover {
      transition: none;
      box-shadow: inherit;
      text-shadow: inherit;
      color: #ffc777;
      border-color: #a9b1d6;
      color: #a9b1d6;
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
      color: #FFB7C5;
      background: #1f2335;
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
      color: #1f2335;
      background: #FFB6C1;
    }

    #battery.charging,
    #battery.plugged {
      color: #1f2335;
      background: #FFB6C1;
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
      color: #1f2335;
      background: #E4C1F9;
    }

    #backlight {
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      padding-right: 10px;
      margin-bottom: 0px;
      border-radius: 10px;
      transition: none;
      color: #161320;
      background: #FFECB3;
    }

    #network {
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      padding-right: 10px;
      margin-bottom: 0px;
      border-radius: 10px;
      transition: none;
      color: #1f2335;
      background: #B5EAD7;
    }

    #tray {
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      margin-bottom: 0px;
      padding-right: 10px;
      border-radius: 10px;
      transition: none;
      color: #B5E8E0;
      background: #1f2335;
    }

    #clock {
      margin-top: 6px;
      margin-left: 8px;
      padding-left: 10px;
      padding-right: 10px;
      margin-bottom: 0px;
      border-radius: 10px;
      transition: none;
      color: #1f2335;
      background: #AEECEF;
    }
  '';
}