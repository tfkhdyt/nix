{ lib, ... }:
{
  programs.hyprlock = {
    enable = false;
    settings = {
      background = lib.mkForce {
        path = "screenshot";
        blur_passes = 2; # 0 disables blurring
        blur_size = 2;
        new_optimizations = true;
        ignore_opacity = false;
      };
      input-field = {
        size = "190, 30";
        outline_thickness = 2;
        dots_size = 0.33; # Scale of input-field height, 0.2 - 0.8
        dots_spacing = 0.15; # Scale of dots' absolute size, 0.0 - 1.0
        dots_center = true;
        outer_color = lib.mkForce "rgba(40,40,40,0.0)";
        inner_color = lib.mkForce "rgba(200, 200, 200, 0.8)";
        font_color = lib.mkForce "rgba(10, 10, 10, 0.8)";
        fade_on_empty = false;
        placeholder_text = "Enter Password"; # Text rendered in the input box ;when it's empty.
        hide_input = false;
        position = "0, 100";
        halign = "center";
        valign = "bottom";
      };
      label = [
        {
          text = ''
            cmd[update:1000] echo "<span>$(date '+%A, %d %B')</span>"
          '';
          # text = cmd[update:1000] echo "<span foreground='##eeeeee'>$(date '+%A, %d %B')</span>"
          color = "rgba(250, 250, 250, 0.8)";
          font_size = 12;
          font_family = "Inter Display";
          position = "0, -100";
          halign = "center";
          valign = "top";
        }
        {
          text = ''
            cmd[update:1000] echo "<span>$(date '+%H:%M')</span>"
          '';
          color = "rgba(250, 250, 250, 0.8)";
          font_size = 75;
          font_family = "Inter Display Bold"; # Bold
          position = "0, -100";
          halign = "center";
          valign = "top";
        }
        {
          text = "   $USER";
          color = "rgba(200, 200, 200, 1.0)";
          font_size = 18;
          font_family = "Inter Display Medium"; # Medium
          position = "0, 150";
          halign = "center";
          valign = "bottom";
        }
      ];
    };
  };
}
