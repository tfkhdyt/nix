{
  imports = [
    ./tmux.nix
    ./nixvim.nix
  ];
  programs = {
    git = import ./git.nix;
    yazi = import ./yazi.nix;
    bash = import ./bash.nix;
    tealdeer = import ./tealdeer.nix;
    yt-dlp = import ./yt-dlp.nix;
    fzf = import ./fzf.nix;
    zoxide = import ./zoxide.nix;
    mpv = import ./mpv.nix;
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
  };
}
