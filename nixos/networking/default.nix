{
  networking = {
    networkmanager = import ./networkmanager.nix;

    hostName = "nixos"; # Define your hostname.
    # nameservers = [
    #   # "103.87.68.194" # bebasid dns
    #   # "94.140.14.14" # adguard
    #   # "94.140.15.15"
    #   "3.0.86.126" # puredns
    #   "3.1.94.218"
    #   "1.1.1.1" # cloudflare
    #   "8.8.8.8" # google
    # ];

    firewall = {
      enable = true;
      allowedTCPPorts = [
        8081
        4321
      ];
      checkReversePath = "loose";
    };
  };
}
