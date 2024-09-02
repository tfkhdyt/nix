{ pkgs, ... }:
{
  programs.mpv = {
    enable = true;
    config = {
      slang = "ind";
      save-position-on-quit = true;
      # hwdec = "auto-safe";
      # vo = "gpu";
      # profile = "gpu-hq";
      # gpu-context = "wayland";
      sub-font = "Inter Variable";
      sub-font-size = 40;
      sub-border-color = "#000000";
      sub-border-size = 1.25;
      screenshot-directory = "/home/tfkhdyt/Pictures/Screenshots/mpv";
      screenshot-template = "%F-%P-%04n";
    };
    scripts = with pkgs; [ mpvScripts.mpv-playlistmanager ];
  };
}
