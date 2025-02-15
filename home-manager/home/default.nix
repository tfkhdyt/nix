{ lib, ... }:
{
  imports = [
    ./packages.nix
    ./cursor.nix
  ];
  home = {
    username = "tfkhdyt";
    homeDirectory = "/home/tfkhdyt";
    stateVersion = "24.05"; # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
    sessionVariables = {
      #   QT_QPA_PLATFORMTHEME = lib.mkForce "gtk3";
      #   QT_STYLE_OVERRIDE = lib.mkForce "adwaita-dark";
      XDG_DATA_DIRS = "$XDG_DATA_DIRS:/usr/share:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share";
    };
  };
}
