{ inputs, lib, ... }:
{
  imports = [
    ./nixpkgs
    ./home
    ./gtk
    ./programs
    ./services
    ./wayland
    # ./xdg
    ./qt
    inputs.nixvim.homeManagerModules.nixvim
  ];
  stylix.targets = {
    waybar.enable = false;
    vscode.enable = false;
    kitty.variant256Colors = true;
    nixvim.enable = false;
    gnome.enable = false;
    gtk.enable = false;
  };
  systemd.user.sessionVariables = {
    QT_QPA_PLATFORMTHEME = lib.mkForce "gtk3";
    QT_STYLE_OVERRIDE = lib.mkForce "adwaita-dark";
  };
}
