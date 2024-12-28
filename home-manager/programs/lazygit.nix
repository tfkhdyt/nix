{ pkgs, ... }:
{
  programs.lazygit = {
    enable = false;
    settings = {
      # git.paging = {
      #   colorArg = "always";
      #   pager = "${pkgs.delta}/bin/delta --paging=never";
      # };
    };
  };
}
