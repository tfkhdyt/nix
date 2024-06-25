{
  enable = true;
  settings = {
    general = {
      before_sleep_cmd = "loginctl lock-session";
      after_sleep_cmd = "hyprctl dispatch dpms on";
      lock_cmd = "pgrep hyprlock || hyprlock";
    };

    listener = [
      {
        timeout = 300;
        on-timeout = "loginctl lock-session";
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