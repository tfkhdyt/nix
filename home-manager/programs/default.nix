{
  programs = {
    home-manager.enable = true;
    git = {
      enable = true;
      userName = "Taufik Hidayat";
      userEmail = "tfkhdyt@proton.me";
      extraConfig = {
        init.defaultBranch = "master";
        color.ui = "auto";
        http.postBuffer = 157286400;
        safe.directory = "/etc/nixos";
      };
    };
    hyprlock.enable = true;
    yazi = {
      enable = true;
      enableBashIntegration = true;
      theme = {
        manager = {
          cwd.fg = "#7aa2f7";  # Blue
          hovered.reversed = true;
          preview_hovered.underline = true;
          find_keyword  = { fg = "#f7768e"; bold = true; italic = true; underline = true; };  # Red
          find_position = { fg = "#bb9af7"; bg = "reset"; bold = true; italic = true; };  # Magenta
          marker_copied   = { fg = "#9ece6a"; bg = "#9ece6a"; };  # Green
          marker_cut      = { fg = "#e0af68"; bg = "#f7768e"; };  # Red
          marker_marked   = { fg = "#7aa2f7"; bg = "#7dcfff"; };  # Cyan
          marker_selected = { fg = "#e0af68"; bg = "#e0af68"; };  # Yellow
          tab_active = { bg = "#282C34"; fg = "#7aa2f7"; };  # Darkened background, Blue text
          tab_inactive = {};
          tab_width    = 1;
          count_copied   = { fg = "#414868"; bg = "#9ece6a"; };  # Darkened black on Green
          count_cut      = { fg = "#414868";  bg = "#e0af68"; };  # Darkened black on Yellow
          count_selected = { fg = "#414868";  bg = "#7aa2f7"; };  # Darkened black on Blue
          border_symbol = "│";
          border_style  = { fg = "#414868"; };  # Darkened black
        }; 
        status = {
          separator_open = "";
          separator_close = "";
          separator_style = { fg = "#3b4261"; bg = "#3b4261"; };
          mode_normal = { fg = "#16161e"; bg = "#7aa2f7"; bold = true; };
          mode_select = { fg = "#16161e"; bg = "#bb9af7"; bold = true; };
          mode_unset = { fg = "#16161e"; bg = "#9d7cd8"; bold = true; };
          progress_label = { fg = "#a9b1d6"; bold = true; };
          progress_normal.fg = "#1a1b26";
          progress_error.fg = "#f7768e";
          permissions_t.fg = "#7aa2f7";
          permissions_r.fg = "#e0af68";
          permissions_w.fg = "#f7768e";
          permissions_x.fg = "#9ece6a";
          permissions_s.fg = "#414868";
        };
        select = {
          border.fg = "#27a1b9";
          active = { fg = "#c0caf5"; bg = "#283457"; };
          inactive.fg = "#c0caf5";
        };
        input = {
          border.fg = "#0db9d7";
          title = {};
          value.fg = "#9d7cd8";
          selected.bg = "#283457";
        };
        completion = {
          border.fg = "#0db9d7";
          active = { fg = "#c0caf5"; bg = "#283457"; };
          inactive.fg = "#c0caf5";
        };
        tasks = {
          border.fg = "#27a1b9";
          title = {};
          hovered = { fg = "#c0caf5"; bg = "#283457"; };
        };
        which = {
          cols = 3;
          mask.bg = "#16161e";
          cand.fg = "#7dcfff";
          rest.fg = "#7aa2f7";
          desc.fg = "#bb9af7";
          separator = "  ";
          separator_style.fg = "#565f89";
        };
        notify = {
          title_info.fg = "#0db9d7";
          title_warn.fg = "#e0af68";
          title_error.fg = "#f7768e";
        };
        help = {
          on.fg = "#9ece6a";
          run.fg = "#bb9af7";
          hovered.bg = "#283457";
          footer = { fg = "#c0caf5"; bg = "#1a1b26"; };
        };
        filetype = {
          rules = [
            { mime = "image/*"; fg = "#e0af68"; }
            { mime = "{audio,video}/*"; fg = "#bb9af7"; }
            { mime = "application/*zip"; fg = "#f7768e"; }
            { mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}"; fg = "#f7768e"; }
            { mime = "application/{pdf,doc,rtf,vnd.*}"; fg = "#7dcfff"; }
            { name = "*"; is = "orphan"; bg = "#f7768e"; }
            { name = "*"; is = "exec"; fg = "#9ece6a"; }
            { name = "*/"; fg = "#7aa2f7"; }
          ];
        };
      };
    };
    bash = {
      enable = true;
      enableCompletion = true;
    };
    fastfetch.enable = true;
    aria2.enable = true;
    bottom.enable = true;
    bun.enable = true;
    lazygit.enable = true;
    obs-studio.enable = true;
    tealdeer = {
      enable = true;
      settings.updates.auto_update = true;
    };
    yt-dlp = {
      enable = true;
      settings = {
        no-mtime = true;
        sub-langs = "all,-live_chat";
        embed-subs = true;
        embed-chapters = true;
        console-title = true;
        o = "%(title).60s.%(ext)s";
      };
    };
    fzf = {
      enable = true;
      enableBashIntegration = true;
    };
    zoxide = {
      enable = true;
      enableBashIntegration = true;
    };
    mpv = {
      enable = true;
      config = {
        slang = "ind";
        save-position-on-quit = true;
        hwdec = "auto-safe";
        vo = "gpu";
        profile = "gpu-hq";
        gpu-context = "wayland";
        sub-font = "Noto Sans";
        sub-font-size = 40;
        sub-border-color = "#000000";
        sub-border-size = 0.1;
        screenshot-directory = "/home/tfkhdyt/Pictures/Screenshots/mpv";
        screenshot-template = "%F-%P-%04n";
      };
    };
    alacritty = {
      enable = true;
      settings = {
        font = {
          size = 13;
            bold.family = "JetBrainsMono NF";
            bold_italic.family = "JetBrainsMono NF";
            italic.family = "JetBrainsMono NF";
            normal.family = "JetBrainsMono NF";
        };
        keyboard.bindings = [
          {
            action = "CreateNewWindow";
            key = "N";
            mods = "Control|Shift";
          }
        ];
        window = {
          dynamic_padding = true;
          dynamic_title = true;
          opacity = 0.85;
        };
        selection.save_to_clipboard = true;
        colors = {
          primary = {
            background = "#1a1b26";
            foreground = "#c0caf5";
          };
          normal = {
            black = "#15161e";
            red = "#f7768e";
            green = "#9ece6a";
            yellow = "#e0af68";
            blue = "#7aa2f7";
            magenta = "#bb9af7";
            cyan = "#7dcfff";
            white = "#a9b1d6";
          };
          bright = {
            black = "#414868";
            red = "#f7768e";
            green = "#9ece6a";
            yellow = "#e0af68";
            blue = "#7aa2f7";
            magenta = "#bb9af7";
            cyan = "#7dcfff";
            white = "#c0caf5";
          };
          indexed_colors = [
            { index = 16; color = "#ff9e64"; }
            { index = 17; color = "#db4b4b"; }
          ];
        };
      };
    };
    fuzzel = {
      enable = false;
      settings = {
        colors = {
          background = "1e1e2edd";
          text = "cdd6f4ff";
          match = "f38ba8ff";
          selection = "585b70ff";
          selection-match = "f38ba8ff";
          selection-text = "cdd6f4ff";
          border = "b4befeff";
        };
      };
    };
    waybar = {
      enable = true;
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
              deactivated = "󰣇";
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
            on-click = "$HOME/scripts/volume.sh mute";
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
    };
  };
}