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
    trash-cli
    upscayl
    vscodium-fhs
    watchexec
    xh
    unzip
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
    gofumpt
    goimports-reviser
    prettierd
    golines
    mdformat
    pdftk
    cloudflared
    imagemagick
    swayimg
    turso-cli
    hyperfine
    pm2
    entr
    lazydocker
    file-roller
  ];
}
