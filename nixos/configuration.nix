# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)
{ inputs, ... }: {
  imports = [
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.home-manager
    ./boot
    ./nixpkgs
    ./nix
    ./networking
    ./hardware
    ./programs
    ./services
    ./security
    ./users
    ./environment
    ./fonts
    ./home-manager
    ./time
    ./i18n
    ./system
    ./systemd
  ];
}
