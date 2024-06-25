{
  networking = {
    networkmanager = import ./networkmanager.nix;
    
    hostName = "nixos"; # Define your hostname.
  };
}