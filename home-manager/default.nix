{ inputs, ... }:
{
  imports = [
    ./nixpkgs
    ./home
    ./gtk
    ./programs
    ./services
    ./wayland
    inputs.nixvim.homeManagerModules.nixvim
  ];
  stylix.targets.waybar.enable = false;
}
