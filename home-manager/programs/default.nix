{
  imports = [
    ./tmux.nix
    ./nixvim.nix
    ./mpv.nix
    ./vscode.nix
  ];
  programs = {
    git = import ./git.nix;
    yazi = import ./yazi.nix;
    bash = import ./bash.nix;
    tealdeer = import ./tealdeer.nix;
    yt-dlp = import ./yt-dlp.nix;
    fzf = import ./fzf.nix;
    zoxide = import ./zoxide.nix;
    alacritty = import ./alacritty.nix;
    waybar = import ./waybar.nix;
    hyprlock = import ./hyprlock.nix;
    zsh = import ./zsh.nix;

    home-manager.enable = true;
    fastfetch.enable = true;
    aria2.enable = true;
    bottom.enable = true;
    bun.enable = true;
    lazygit.enable = true;
    obs-studio.enable = true;
    java.enable = false;
    zathura.enable = true;
    go = {
      enable = true;
      goPath = "go";
      goBin = ".local/bin/";
    };
  };
}
