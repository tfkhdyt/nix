{ pkgs, ... }: {
  home = {
    username = "tfkhdyt";
    homeDirectory = "/home/tfkhdyt";
    packages = with pkgs; [
      # beekeeper-studio
      dbmate
      gimp
      go
      gping
      kondo
      lefthook
      nodejs_20
      oha
      nodePackages.pnpm
      podman
      podman-compose
      postman
      speedtest-cli
      syncthing
      tokei
      trashy
      upscayl
      vscodium-fhs
      watchexec
      xh
      rustup
      unzip
      python3
      grimblast
      ueberzugpp
      bemenu
      j4-dmenu-desktop
      brave
      gnumake
      nil
      imv
    ];
    pointerCursor = {
      gtk.enable = true;
      # x11.enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };
    stateVersion = "24.05"; # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  };
}