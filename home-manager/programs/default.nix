{
  imports = [
    ./git.nix
    ./yazi.nix
    ./bash.nix
    ./tealdeer.nix
    ./yt-dlp.nix
    ./fzf.nix
    ./zoxide.nix
    ./mpv.nix
    ./alacritty.nix
    ./waybar.nix
  ];
  programs = {
    home-manager.enable = true;
    hyprlock.enable = true;
    fastfetch.enable = true;
    aria2.enable = true;
    bottom.enable = true;
    bun.enable = true;
    lazygit.enable = true;
    obs-studio.enable = true;
  };
}