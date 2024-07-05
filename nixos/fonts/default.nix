{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      # noto-fonts
      noto-fonts-cjk
      # noto-fonts-emoji
      corefonts
      inter
      # (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    ];
    # fontconfig = {
    #   defaultFonts = {
    #     serif = [
    #       "Noto Serif"
    #       "Noto Color Emoji"
    #     ];
    #     sansSerif = [
    #       "Noto Sans"
    #       "Noto Color Emoji"
    #     ];
    #     monospace = [
    #       "JetBrainsMono NF"
    #       "Noto Color Emoji"
    #     ];
    #   };
    # };
  };
}
