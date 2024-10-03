{ lib, pkgs, ... }:
{
  systemd.services = {
    postgresql.wantedBy = lib.mkForce [ ];
    mysql.wantedBy = lib.mkForce [ ];
    httpd.wantedBy = lib.mkForce [ ];
    # waydroid-container.wantedBy = lib.mkForce [ ];
    # blueman.wantedBy = lib.mkForce [ ];
    charging-threshold = {
      enable = true;
      path = with pkgs; [ bash ];
      description = "Set the battery charge threshold";
      after = [ "multi-user.target" ];
      script = ''
        bash -c 'echo 51 > /sys/class/power_supply/BAT0/charge_control_end_threshold'
        bash -c 'echo 51 > /sys/class/power_supply/BAT1/charge_control_end_threshold'
      '';
      unitConfig = {
        Type = "oneshot";
      };
      wantedBy = [ "multi-user.target" ];
    };
  };
}
