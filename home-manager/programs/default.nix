{
  imports = [
    ./tmux.nix
    ./nixvim.nix
    ./mpv.nix
    ./vscode.nix
    ./lazygit.nix
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
    go = import ./go.nix;
    kitty = import ./kitty.nix;
    firefox = import ./firefox.nix;

    home-manager.enable = true;
    fastfetch.enable = true;
    aria2.enable = true;
    bottom.enable = true;
    bun.enable = true;
    obs-studio.enable = true;
    java.enable = false;
    zathura.enable = true;
  };
}
