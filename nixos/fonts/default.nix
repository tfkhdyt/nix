{ pkgs, ... }:
{
  fonts = {
    fontDir.enable = true;
    packages = with pkgs; [
      # noto-fonts
      noto-fonts-cjk-sans
      # noto-fonts-emoji
      corefonts
      # inter
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
