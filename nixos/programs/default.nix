{
  imports = [ ./thunar.nix ];
  programs = {
    # neovim = import ./neovim.nix;
    nh = import ./nh.nix;

    dconf.enable = true;
    starship.enable = true;
    nm-applet.enable = false;
    steam.enable = true;
    adb.enable = true;
    zsh.enable = true;
    gamescope.enable = true;
  };
}
