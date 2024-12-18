{ pkgs, ... }:
{
  xdg.portal = {
    enable = false;
    # extraPortals = with pkgs; [
    #   xdg-desktop-portal-gtk
    # ];
  };
}
