let
  lockCmd = "hyprlock";
in
{
  enable = true;
  settings = {
    general = {
      before_sleep_cmd = lockCmd;
      after_sleep_cmd = "hyprctl dispatch dpms on";
      lock_cmd = lockCmd;
    };

    listener = [
      {
        timeout = 300;
        on-timeout = lockCmd;
      }
      {
        timeout = 380;
        on-timeout = "hyprctl dispatch dpms off";
        on-resume = "hyprctl dispatch dpms on";
      }
      {
        timeout = 600;
        on-timeout = "systemctl suspend";
      }
    ];
  };
}
