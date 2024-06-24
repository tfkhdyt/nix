let
  neovim = import ./neovim.nix;
  nh = import ./nh.nix;
in {
  programs = {
    inherit neovim nh;

    dconf.enable = true;
    starship.enable = true;
    firefox.enable = true;
  };
}