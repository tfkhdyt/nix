{ pkgs, lib, ... }:
{
  stylix = {
    enable = true;
    image = ../../wallpapers/marek-piwnicki-oaZltoEJ2fo-unsplash.jpg;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/material-darker.yaml";
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
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono NF";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
    };
    cursor = {
      # package = pkgs.apple-cursor;
      package = pkgs.bibata-cursors;
      # name = "macOS";
      name = "Bibata-Modern-Classic";
      # name = "Banana";
      size = 24;
    };
    opacity.terminal = 0.9;
    targets = {
      nixvim.enable = lib.mkForce false;
      gnome.enable = false;
      gtk.enable = false;
      chromium.enable = false;
    };
  };
}
