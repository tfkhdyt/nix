{
  networking = {
    networkmanager = import ./networkmanager.nix;

    hostName = "nixos"; # Define your hostname.
    nameservers = [
      "1.1.1.1"
      "8.8.8.8"
    ];

    firewall = {
      enable = true;
      allowedTCPPorts = [ 8081 ];
    };
  };
}
