{ lib, ... }:
{
  systemd.services = {
    postgresql.wantedBy = lib.mkForce [ ];
    # blueman.wantedBy = lib.mkForce [ ];
    battery-threshold = {
      enable = true;
      description = "Set battery charge thresholds";
      serviceConfig = {
        Type = "oneshot";
        ExecStart = [
          "echo 40 | tee /sys/class/power_supply/BAT*/charge_start_threshold"
          "echo 50 | tee /sys/class/power_supply/BAT*/charge_stop_threshold"
        ];
        RemainAfterExit = true;
      };
      wantedBy = [ "multi-user.target" ];
    };
  };
}
