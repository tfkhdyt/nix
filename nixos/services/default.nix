{ pkgs, ... }:
{
  # imports = [
  #   ./postgresql.nix
  #   ./mariadb.nix
  # ];
  services = {
    pipewire = import ./pipewire.nix;
    # tlp = import ./tlp.nix;
    earlyoom = import ./earlyoom.nix;
    # dnscrypt-proxy2 = import ./dnscrypt-proxy2.nix;

    printing = {
      enable = true; # Enable CUPS to print documents.
      drivers = [ pkgs.hplipWithPlugin ];
    };
    blueman.enable = false;
    openssh.enable = true;
    fwupd.enable = true;
    httpd.enable = true;
    tumbler.enable = false;
    zram-generator = {
      enable = true;
      settings = {
        zram0 = {
          zram-size = "min(ram / 2, 4096)";
        };
      };
    };
    flatpak.enable = false;
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
      xkb.variant = "colemak";
    };
  };
}
