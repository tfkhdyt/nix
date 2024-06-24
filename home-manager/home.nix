# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  # inputs,
  # lib,
  # config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "tfkhdyt";
    homeDirectory = "/home/tfkhdyt";
    packages = with pkgs; [
      # beekeeper-studio
      dbmate
      gimp
      go
      gping
      kondo
      lefthook
      nodejs_20
      oha
      nodePackages.pnpm
      podman
      podman-compose
      postman
      speedtest-cli
      syncthing
      tokei
      trashy
      upscayl
      vscodium
      watchexec
      xh
      rustup
      unzip
      python3
      grimblast
      ueberzugpp
      bemenu
      j4-dmenu-desktop
      brave
      gnumake
      nil
      imv
    ];
    pointerCursor = {
      gtk.enable = true;
      # x11.enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };
    stateVersion = "24.05"; # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  };

  gtk = {
    enable = true;

    theme = {
      package = pkgs.flat-remix-gtk;
      name = "Flat-Remix-GTK-Blue-Dark";
    };

    iconTheme = {
      package = pkgs.gnome.adwaita-icon-theme;
      name = "Adwaita";
    };

    font = {
      name = "Noto Sans";
      size = 10;
    };
  };

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

  services = {
    hypridle = {
      enable = true;
      settings = {
        general = {
          before_sleep_cmd = "loginctl lock-session";
          after_sleep_cmd = "hyprctl dispatch dpms on";
          lock_cmd = "pgrep hyprlock || hyprlock";
        };

        listener = [
          {
            timeout = 300;
            on-timeout = "loginctl lock-session";
          }
          {
            timeout = 380;
            on-timeout = "hyprctl dispatch dpms off";
            on-resume = "hyprctl dispatch dpms on";
          }
          {
            timeout = 600;
            on-timeout = "systemctl suspend";
          }
        ];
      };
    };
    ssh-agent.enable = true;
    dunst = {
      enable = true;
      iconTheme = {
        name = "Adwaita";
        package = pkgs.gnome.adwaita-icon-theme;
      };
      settings = {
        global = {
          corner_radius = 16;
          frame_color = "#89b4fa";
          separator_color = "frame";
          follow = "mouse";
          width = "(0, 600)";
          height = 100;
          origin = "top-right";
          offset = "40x20";
          progress_bar = true;
          progress_bar_height = 10;
          progress_bar_frame_width = 1;
          progress_bar_min_width = 150;
          progress_bar_max_width = 400;
          progress_bar_corner_radius = 0;
          separator_height = 2;
          padding = 10;
          horizontal_padding = 15;
          text_icon_padding = 15;
          frame_width = 2;
          gap_size = 7;
          sort = "yes";
          font = "JetBrainsMono NFP 12";
          alignment = "left";
          vertical_alignment = "center";
          show_age_threshold = 60;
          ellipsize = "middle";
          ignore_newline = "no";
          stack_duplicates = true;
          hide_duplicate_count = false;
          show_indicators = "yes";
        };
        urgency_low = {
          background = "#1e1e2e";
          foreground = "#cdd6f4";
          highlight = "#cdd6f4";
        };
        urgency_normal = {
          background = "#1e1e2e";
          foreground = "#cdd6f4";
          highlight = "#cdd6f4";
        };
        urgency_critical = {
          background = "#1e1e2e";
          foreground = "#cdd6f4";
          frame_color = "#fab387";
          highlight = "#fab387";
        };
      };
    };
    hyprpaper = {
      enable = true;
      settings = {
        ipc = "off";
        splash = false;
        preload = [
          "/home/tfkhdyt/Pictures/Wallpapers/pexels-lastly-937782.jpg"
        ];
        wallpaper = [
          "HDMI-A-2,/home/tfkhdyt/Pictures/Wallpapers/pexels-lastly-937782.jpg"
          "eDP-1,/home/tfkhdyt/Pictures/Wallpapers/pexels-lastly-937782.jpg"
        ];
      };
    };
  };

  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      enable = true;
      variables = [ "--all" ];
    };
    xwayland.enable = true;
    settings = {
      animations = {
        enabled = true;
        bezier = [
          "myBezier, 0.05, 0.9, 0.1, 1.05"
          "easeInOutCirc, 0.85, 0, 0.15, 1"
          "easeOutExpo, 0.16, 1, 0.3, 1"
          "overshot,0.05,0.9,0.1,1"
        ];
        animation = [
          "windows, 1, 7, overshot, popin 75%"
          "windowsOut, 1, 7, overshot, slide"
          "layers, 1, 7, overshot, popin 75%"
          "windowsMove, 1, 5, default"
          "border, 1, 2, default"              
          "borderangle, 1, 2, default"         
          "fade, 1, 7, overshot"               
          "workspaces, 1, 7, overshot, fade"
        ];
      };      
      binds.allow_workspace_cycles = true;
      "$mainMod" = "SUPER";
      "$scriptDir" = "/home/tfkhdyt/scripts";
      bind = [
        "$mainMod, Return, exec, alacritty"
        "$mainMod SHIFT, Q, killactive"
        "$mainMod SHIFT, M, exit"
        # "$mainMod, E, exec, thunar"
        # "$mainMod, C, exec, vsc.sh"
        "$mainMod, V, togglefloating"
        "$mainMod, R, exec, j4-dmenu-desktop --dmenu='bemenu -i' --term='alacritty'"
        "$mainMod, P, pin"
        "$mainMod, J, togglesplit"
        # "$mainMod, B, exec, gio launch /usr/share/applications/brave-browser.desktop"
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"
        "ALT, TAB, cyclenext"
        "$mainMod SHIFT, left, movewindow, l"
        "$mainMod SHIFT, right, movewindow, r"
        "$mainMod SHIFT, up, movewindow, u"
        "$mainMod SHIFT, down, movewindow, d"
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"
        "$mainMod, F, fullscreen"
        ", xf86audiomicmute, exec, $scriptDir/mic.sh"
        ", xf86audioraisevolume, exec, $scriptDir/volume.sh up"
        ", xf86audiolowervolume, exec, $scriptDir/volume.sh down"
        ", xf86audiomute, exec, $scriptDir/volume.sh mute"
        ", XF86MonBrightnessUp, exec, $scriptDir/brightness.sh up"
        ", XF86MonBrightnessDown, exec, $scriptDir/brightness.sh down"
        ", xf86audiomicmute, exec, $scriptDir/mic.sh"
        ", xf86audioraisevolume, exec, $scriptDir/volume.sh up"
        ", xf86audiolowervolume, exec, $scriptDir/volume.sh down"
        ", xf86audiomute, exec, $scriptDir/volume.sh mute"
        ", XF86MonBrightnessUp, exec, $scriptDir/brightness.sh up"
        ", XF86MonBrightnessDown, exec, $scriptDir/brightness.sh down"
        # screenshots
        ", Print, exec, $scriptDir/full-screenshot.sh"
        "$mainMod, Print, exec, $scriptDir/active-window-screenshot.sh"
        "SHIFT, Print, exec, $scriptDir/selection-screenshot.sh"
        # clipboard screenshots
        "CTRL, Print, exec, $scriptDir/full-screenshot.sh copy"
        "CTRL $mainMod, Print, exec, $scriptDir/active-window-screenshot.sh copy"
        "CTRL SHIFT, Print, exec, $scriptDir/selection-screenshot.sh copy"
        # workspace navigation
        "$mainMod, TAB, workspace, previous"
        # powermenu
        # "$mainMod, backslash, exec, powermenu.sh"
        # mpd
        # "$mainMod, slash, exec, $scriptDir/start-mpd"
        "$mainMod, S, togglespecialworkspace, magic"
        "$mainMod SHIFT, S, movetoworkspace, special:magic"
        "$mainMod, comma, movecurrentworkspacetomonitor, -1"
        "$mainMod, period, movecurrentworkspacetomonitor, +1"
      ] ++ (
        # workspaces
        # binds $mod + [shift +] {1..10} to [move to] workspace {1..10}
        builtins.concatLists (builtins.genList (
            x: let
              ws = let
                c = (x + 1) / 10;
              in
                builtins.toString (x + 1 - (c * 10));
            in [
              "$mainMod, ${ws}, workspace, ${toString (x + 1)}"
              "$mainMod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
            ]
          )
          10)
      );
      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
      decoration = {
        rounding = 8;
        blur.enabled = false;
        drop_shadow = false;
      };
      exec-once = [
        "waybar"
        "lxqt-policykit-agent"
      ];
      general = {
        gaps_in = 5;
        gaps_out = "2,28,10,28";
        border_size = 5;
        "col.active_border" = "rgb(E4C1F9) rgb(B5EAD7) 45deg";
        "col.inactive_border"= "rgb(1f2335)";
        layout = "dwindle";
      };
      input = {
        kb_layout = "us";
        repeat_delay = 375;
        repeat_rate = 63;
        follow_mouse = 1;
        accel_profile = "flat";
        sensitivity = -0.2;
      };
      dwindle = {
        pseudotile = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = true; # you probably want this
        no_gaps_when_only = true;
        smart_split = false;
      };
      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
      };
      monitor = [
        ",preferred,1920x0,1"
        "desc:ViewSonic Corporation VX2479 Series X9N233300922,1920x1080@100,0x0,1"
      ];
      workspace = [
        "1,monitor:HDMI-A-2,default:true"
        "2,monitor:HDMI-A-2"
        "3,monitor:HDMI-A-2"
        "4,monitor:HDMI-A-2"
        "5,monitor:HDMI-A-2"
        "6,monitor:eDP-1,default:true"
        "7,monitor:eDP-1"
        "8,monitor:eDP-1"
        "9,monitor:eDP-1"
        "10,monitor:eDP-1"
      ];
      windowrulev2 = [];
    };
    extraConfig = ''
      # submap
      # will switch to a submap called resize
      bind = $mainMod, D, submap, resize

      # will start a submap called "resize"
      submap=resize

      # sets repeatable binds for resizing the active window
      binde=,right,resizeactive,40 0
      binde=,left,resizeactive,-40 0
      binde=,up,resizeactive,0 -40
      binde=,down,resizeactive,0 40

      # use reset to go back to the global submap
      bind=,escape,submap,reset 

      # will reset the submap, meaning end the current one and return to the global one
      submap=reset
    '';
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
}
