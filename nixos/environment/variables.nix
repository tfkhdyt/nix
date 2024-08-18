{ pkgs, ... }:
{
  environment.variables = {
    NIXOS_OZONE_WL = "1";
    BEMENU_OPTS = ''
      --fb "#282828" --ff "#ebdbb2" --nb "#282828" --nf "#ebdbb2" --tb "#282828" --hb "#282828" --tf "#fb4934" --hf "#b8bb26" --af "#ebdbb2" --ab "#282828"
    '';
    ANDROID_HOME = "/home/tfkhdyt/Android/Sdk";
    XDG_DATA_DIRS = [
      "${pkgs.gsettings-desktop-schemas}/share/gsettings-schemas/${pkgs.gsettings-desktop-schemas.name}"
      "${pkgs.gtk3}/share/gsettings-schemas/${pkgs.gtk3.name}"
    ];
  };
}
