{ lib, ... }:
{
  qt = {
    enable = true;
    platformTheme = lib.mkForce "gtk3";
    style = {
      # package = pkgs.adwaita-qt;
      name = "adwaita-dark";
    };
  };
}
