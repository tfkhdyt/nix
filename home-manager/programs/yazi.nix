{
  programs.yazi = {
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
}