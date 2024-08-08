{
  imports = [ ./thunar.nix ];
  programs = {
    # neovim = import ./neovim.nix;
    nh = import ./nh.nix;

    dconf.enable = true;
    starship.enable = true;
    firefox.enable = true;
    nm-applet.enable = true;
    steam.enable = false;
    adb.enable = true;
    zsh.enable = true;
    evince.enable = false;
  };
}
