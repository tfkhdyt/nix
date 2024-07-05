{
  enable = true;
  settings = {
    # font = {
    # size = 13;
    # bold.family = "JetBrainsMono NF";
    # bold_italic.family = "JetBrainsMono NF";
    # italic.family = "JetBrainsMono NF";
    # normal.family = "JetBrainsMono NF";
    # };
    keyboard.bindings = [
      {
        action = "CreateNewWindow";
        key = "N";
        mods = "Control|Shift";
      }
    ];
    window = {
      dynamic_padding = true;
      dynamic_title = false;
      # opacity = 0.85;
    };
    selection.save_to_clipboard = true;
    # colors = {
    #   primary = {
    #     background = "#1a1b26";
    #     foreground = "#c0caf5";
    #   };
    #   normal = {
    #     black = "#15161e";
    #     red = "#f7768e";
    #     green = "#9ece6a";
    #     yellow = "#e0af68";
    #     blue = "#7aa2f7";
    #     magenta = "#bb9af7";
    #     cyan = "#7dcfff";
    #     white = "#a9b1d6";
    #   };
    #   bright = {
    #     black = "#414868";
    #     red = "#f7768e";
    #     green = "#9ece6a";
    #     yellow = "#e0af68";
    #     blue = "#7aa2f7";
    #     magenta = "#bb9af7";
    #     cyan = "#7dcfff";
    #     white = "#c0caf5";
    #   };
    #   indexed_colors = [
    #     {
    #       index = 16;
    #       color = "#ff9e64";
    #     }
    #     {
    #       index = 17;
    #       color = "#db4b4b";
    #     }
    #   ];
    # };
  };
}
