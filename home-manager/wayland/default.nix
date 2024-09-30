{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      enable = true;
      variables = [
        "--systemd"
        "--all"
      ];
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
          "windowsOut, 1, 7, overshot, popin 75%"
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
      bind =
        [
          "$mainMod, Return, exec, kitty"
          "$mainMod SHIFT, Q, killactive"
          "$mainMod SHIFT, M, exit"
          # "$mainMod, E, exec, thunar"
          # "$mainMod, C, exec, vsc.sh"
          "$mainMod, V, togglefloating"
          "$mainMod, R, exec, j4-dmenu-desktop --dmenu='bemenu -i' --term='kitty'"
          "$mainMod, B, exec, brave"
          "$mainMod, N, exec, joplin-desktop"
          "$mainMod, C, exec, slack"
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
          "$mainMod, backslash, exec, $scriptDir/powermenu"
          # mpd
          # "$mainMod, slash, exec, $scriptDir/start-mpd"
          "$mainMod, S, togglespecialworkspace, magic"
          "$mainMod SHIFT, S, movetoworkspace, special:magic"
          "$mainMod, comma, movecurrentworkspacetomonitor, -1"
          "$mainMod, period, movecurrentworkspacetomonitor, +1"
        ]
        ++ (
          # workspaces
          # binds $mod + [shift +] {1..10} to [move to] workspace {1..10}
          builtins.concatLists (
            builtins.genList (
              x:
              let
                ws =
                  let
                    c = (x + 1) / 10;
                  in
                  builtins.toString (x + 1 - (c * 10));
              in
              [
                "$mainMod, ${ws}, workspace, ${toString (x + 1)}"
                "$mainMod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
              ]
            ) 10
          )
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
      exec-once = [ "lxqt-policykit-agent" ];
      general = {
        gaps_in = 5;
        gaps_out = "2,20,10,20";
        border_size = 3;
        # "col.active_border" = "rgb(E4C1F9) rgb(B5EAD7) 45deg";
        # "col.inactive_border" = "rgb(1f2335)";
        layout = "dwindle";
      };
      input = {
        kb_layout = "us";
        repeat_delay = 375;
        repeat_rate = 63;
        follow_mouse = 1;
        accel_profile = "flat";
        sensitivity = 0;
      };
      gestures = {
        workspace_swipe = true;
      };
      device = [
        {
          name = "inno-x2-v2-1-mouse";
          sensitivity = -0.2;
        }
        {
          name = "inno-x2-v2-2-mouse";
          sensitivity = -0.2;
        }
        {
          name = "beken-2.4g-wireless-device-1";
          sensitivity = -0.2;
        }
        {
          name = "beken-2.4g-wireless-device-2";
          sensitivity = -0.2;
        }
      ];
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
        "desc:ViewSonic Corporation VX2479 Series X9N233300922,highrr,0x0,1"
        # "HDMI-A-2,preferred,0x0,1"
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
      windowrulev2 = [
        "float,title:(Authentication Required|Picture-in-Picture)"
        "pin,title:(Authentication Required|Picture-in-Picture)"
        "float,title:^(Open Files?|All Files|Open Folder|Install from VSIX|Bitwarden)$"
      ];
      debug.disable_logs = true;
      env = [
        "XCURSOR_THEME,macOS-Monterey"
        "GDK_BACKEND,wayland,x11,*"
        "QT_QPA_PLATFORM,wayland;xcb"
        "SDL_VIDEODRIVER,wayland"
        "QT_AUTO_SCREEN_SCALE_FACTOR,1"
        "QT_QPA_PLATFORM,wayland;xcb"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
      ];
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
}
