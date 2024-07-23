{ pkgs, lib, ... }:
{
  stylix = {
    enable = true;
    image = ../../wallpapers/animeskull.png;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
    fonts = {
      sizes = {
        applications = 10;
        desktop = 10;
        popups = 10;
        terminal = 13;
      };
      serif = {
        package = pkgs.noto-fonts;
        name = "Noto Serif";
      };
      sansSerif = {
        package = pkgs.inter;
        name = "Inter Variable";
      };
      monospace = {
        package = (
          pkgs.nerdfonts.override {
            fonts = [
              "JetBrainsMono"
              "RobotoMono"
            ];
          }
        );
        name = "RobotoMono Nerd Font Propo";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
    };
    cursor = {
      package = pkgs.apple-cursor;
      name = "macOS-Monterey";
      size = 32;
    };
    opacity.terminal = 0.85;
    targets = {
      nixvim.enable = lib.mkForce false;
    };
  };
}
