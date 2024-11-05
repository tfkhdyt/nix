{ pkgs, ... }:
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
    ssh = import ./ssh.nix;

    home-manager.enable = true;
    fastfetch.enable = true;
    aria2.enable = true;
    bottom.enable = true;
    bun.enable = true;
    obs-studio = {
      enable = true;
      plugins = with pkgs; [
        obs-studio-plugins.droidcam-obs
        obs-studio-plugins.obs-gstreamer
        obs-studio-plugins.obs-vaapi
        obs-studio-plugins.obs-backgroundremoval
      ];
    };
    java = {
      enable = false;
      package = pkgs.graalvm-ce;
    };
    zathura.enable = true;
  };
}
