{ pkgs, ... }:
{
  home.packages = with pkgs; [
    beekeeper-studio
    dbmate
    gimp
    # go
    gping
    kondo
    lefthook
    nodejs_20
    oha
    pnpm
    postman
    speedtest-cli
    syncthing
    scc
    trash-cli
    upscayl
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
    # imv
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
    # swayimg
    turso-cli
    hyperfine
    pm2
    entr
    lazydocker
    file-roller
    urban-cli
    ffmpeg-full
    xfce.ristretto
    # qpdfview
    slack
  ];
}
