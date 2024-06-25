{
  imports = [
    ./postgresql.nix
  ];
  services = {
    pipewire = import ./pipewire.nix;

    printing.enable = true; # Enable CUPS to print documents.
    blueman.enable = true;
    openssh.enable = true;
    fwupd.enable = true;
  };
}
