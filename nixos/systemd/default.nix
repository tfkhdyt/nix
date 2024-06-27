{ lib, ... }:
{
  systemd.services = {
    postgresql.wantedBy = lib.mkForce [ ];
    # blueman.wantedBy = lib.mkForce [ ];
  };
}
