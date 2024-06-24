let
  pipewire = import ./pipewire.nix;
in {
  imports = [
    ./postgresql.nix
  ];
  services = {
    inherit pipewire;

    printing.enable = true; # Enable CUPS to print documents.
    blueman.enable = true;
    openssh.enable = true;
  };
}