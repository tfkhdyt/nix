{ pkgs, ... }:
{
  programs.thunar = {
    enable = false;
    plugins = with pkgs.xfce; [ thunar-archive-plugin ];
  };
}
