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
          "/bin/bash -c 'echo 40 | sudo tee /sys/class/power_supply/BAT*/charge_start_threshold'"
          "/bin/bash -c 'echo 50 | sudo tee /sys/class/power_supply/BAT*/charge_stop_threshold'"
        ];
        RemainAfterExit = true;
      };
      wantedBy = [ "multi-user.target" ];
    };
  };
}
