{ pkgs, ... }:
{
  services.dunst = {
    enable = false;
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
    settings = {
      global = {
        corner_radius = 16;
        # frame_color = "#89b4fa";
        # separator_color = "frame";
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
        # font = "JetBrainsMono NFP 12";
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
        #   background = "#1e1e2e";
        #   foreground = "#cdd6f4";
        highlight = "#89B4FA";
      };
      urgency_normal = {
        #   background = "#1e1e2e";
        #   foreground = "#cdd6f4";
        highlight = "#89B4FA";
      };
      # urgency_critical = {
      #   background = "#1e1e2e";
      #   foreground = "#cdd6f4";
      #   frame_color = "#fab387";
      #   highlight = "#fab387";
      # };
    };
  };
}
