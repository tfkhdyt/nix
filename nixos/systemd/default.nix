{ lib, ... }:
{
  systemd.services = {
    postgresql.wantedBy = lib.mkForce [ ];
    mysql.wantedBy = lib.mkForce [ ];
    httpd.wantedBy = lib.mkForce [ ];
    waydroid-container.wantedBy = lib.mkForce [ ];
    # blueman.wantedBy = lib.mkForce [ ];
  };
}
