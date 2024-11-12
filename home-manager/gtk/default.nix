{ pkgs, ... }:
{
  gtk = {
    enable = true;

    # theme = {
    #   package = pkgs.flat-remix-gtk;
    #   name = "Flat-Remix-GTK-Blue-Dark";
    # };

    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Light";
    };

    # font = {
    #   name = "Noto Sans";
    #   size = 10;
    # };
  };
}
