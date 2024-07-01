{
  programs = {
    # neovim = import ./neovim.nix;
    nh = import ./nh.nix;

    dconf.enable = true;
    starship.enable = true;
    firefox.enable = true;
    nm-applet.enable = true;
    steam.enable = true;
    thunar.enable = true;
    adb.enable = true;
  };
}
