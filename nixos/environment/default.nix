{ pkgs, ... }:
{
  imports = [
    ./packages.nix
    ./variables.nix
  ];
  environment = {
    # variables = import ./variables.nix;
    shellAliases = import ./shell-aliases.nix;
    localBinInPath = true;
    gnome.excludePackages = with pkgs; [
      orca
      geary
      gnome-backgrounds
      gnome-tour
      gnome-user-docs
      epiphany
      gnome-text-editor
      gnome-console
      gnome-contacts
      gnome-maps
      gnome-music
      gnome-connections
      totem
      gnome-software
    ];
  };
}
