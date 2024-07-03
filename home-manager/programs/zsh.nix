{
  enable = true;
  enableVteIntegration = true;
  autosuggestion.enable = true;
  syntaxHighlighting = {
    enable = true;
    highlighters = [
      "main"
      "brackets"
      "pattern"
      "cursor"
      "line"
    ];
  };
  zsh-abbr = {
    enable = true;
    abbreviations = {
      v = "nvim";
      vs = "sudoedit";
      lg = "lazygit";
      g = "git";
      t = "tmux";
      rebuild = "sudo nixos-rebuild switch";
      sc = "sudo systemctl";
      scu = "systemctl --user";
      ar2 = "aria2c";
      p = "pnpm";
    };
  };
}
