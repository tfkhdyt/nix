{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    clock24 = true;
    mouse = true;
    prefix = "C-a";
    terminal = "alacritty";
    extraConfig = ''
      set -g @yank_selection_mouse 'clipboard'
      set -g allow-passthrough on
      set -ga update-environment TERM
      set -ga update-environment TERM_PROGRAM
    '';
    sensibleOnTop = true;
    escapeTime = 250;
    plugins = with pkgs; [ tmuxPlugins.gruvbox ];
  };
}
