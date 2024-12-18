{ pkgs, ... }:
{
  xdg.portal = {
    enable = false;
    # extraPortals = with pkgs; [
    #   # xdg-desktop-portal-hyprland
    #   xdg-desktop-portal-gtk
    # ];
    # config.common.default = "*";
  };
}
