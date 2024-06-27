{
  imports = [
    ./nixpkgs
    ./home
    ./gtk
    ./programs
    ./services
    ./wayland
    <nixvim>.homeManagerModules.nixvim
  ];
}
