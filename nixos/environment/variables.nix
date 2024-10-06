{ pkgs, ... }:
{
  environment.variables = {
    NIXOS_OZONE_WL = "1";
    BEMENU_OPTS = ''
      --fb "#1e1e2e" --ff "#cdd6f4" --nb "#1e1e2e" --nf "#cdd6f4" --tb "#1e1e2e" --hb "#1e1e2e" --tf "#f38ba8" --hf "#a6e3a1" --af "#cdd6f4" --ab "#1e1e2e"
    '';
    ANDROID_HOME = "/home/tfkhdyt/Android/Sdk";
    XDG_DATA_DIRS = [
      "${pkgs.gsettings-desktop-schemas}/share/gsettings-schemas/${pkgs.gsettings-desktop-schemas.name}"
      "${pkgs.gtk3}/share/gsettings-schemas/${pkgs.gtk3.name}"
    ];
    PATH = "$PATH:/home/tfkhdyt/.cargo/bin";
  };
}
