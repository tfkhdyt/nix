{ pkgs, ... }:
{
  home.packages = with pkgs; [
    beekeeper-studio
    dbmate
    gimp
    go
    gping
    kondo
    lefthook
    nodejs_20
    oha
    pnpm
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
    bc
    gopls
    go-tools
    gomodifytags
    impl
    nix-init
    nixfmt-rfc-style
    zathura
    gofumpt
    goimports-reviser
    prettierd
    golines
    mdformat
  ];
}
