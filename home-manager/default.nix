{ inputs, ... }:
{
  imports = [
    ./nixpkgs
    ./home
    ./gtk
    ./programs
    ./services
    ./wayland
    ./xdg
    ./qt
    inputs.nixvim.homeManagerModules.nixvim
  ];
  stylix.targets.waybar.enable = false;
}
