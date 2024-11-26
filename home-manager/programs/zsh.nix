{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableVteIntegration = false;
    autosuggestion.enable = true;
    syntaxHighlighting = {
      enable = true;
      highlighters = [
        "main"
        "brackets"
        "pattern"
        # "cursor"
        "line"
      ];
    };
    zsh-abbr = {
      enable = true;
      abbreviations = {
        v = "nvim";
        vs = "codium";
        lg = "lazygit";
        g = "git";
        t = "tmux";
        rebuild = "sudo nixos-rebuild switch";
        sc = "sudo systemctl";
        scu = "systemctl --user";
        ar2 = "aria2c";
        p = "pnpm";
        n = "node";
      };
    };
    initExtra = ''
      source ${pkgs.zsh-fzf-tab}/share/fzf-tab/fzf-tab.plugin.zsh

      # Use fd (https://github.com/sharkdp/fd) for listing path candidates.
      # - The first argument to the function ($1) is the base path to start traversal
      # - See the source code (completion.{bash,zsh}) for the details.
      _fzf_compgen_path() {
        fd --type f --type d --follow . "$1"
      }

      # Use fd to generate the list for directory completion
      _fzf_compgen_dir() {
        fd --type d --follow . "$1"
      }

      bindkey '^k' kill-line
    '';
  };
}
