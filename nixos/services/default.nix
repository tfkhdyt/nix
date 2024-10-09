{
  imports = [
    ./postgresql.nix
    ./mariadb.nix
  ];
  services = {
    pipewire = import ./pipewire.nix;
    tlp = import ./tlp.nix;
    earlyoom = import ./earlyoom.nix;
    dnscrypt-proxy2 = import ./dnscrypt-proxy2.nix;

    printing.enable = true; # Enable CUPS to print documents.
    blueman.enable = true;
    openssh.enable = true;
    fwupd.enable = true;
    httpd.enable = true;
    tumbler.enable = true;
  };
}
