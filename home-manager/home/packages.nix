{ pkgs, ... }: {
   home.packages = with pkgs; [
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
}