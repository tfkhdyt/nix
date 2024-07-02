{ lib, ... }:
{
  systemd.services = {
    postgresql.wantedBy = lib.mkForce [ ];
    waydroid-container.wantedBy = lib.mkForce [ ];
    # blueman.wantedBy = lib.mkForce [ ];
  };
}
