{
  programs = {
    dconf.enable = true;
    starship.enable = true;
    firefox.enable = true;
    neovim = {
      enable = true;
      defaultEditor = true;
    };
    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep-since 4d --keep 3";
      flake = "/home/tfkhdyt/nix";
    };
  };
}