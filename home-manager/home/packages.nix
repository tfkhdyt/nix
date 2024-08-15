{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # beekeeper-studio
    bc
    bemenu
    brave

    cloudflared

    dbmate

    ffmpeg-full
    file-roller

    gimp
    gnumake
    gofumpt
    goimports-reviser
    golines
    gomodifytags
    gopls
    go-tools
    gping
    grimblast

    hyperfine

    imagemagick
    impl

    j4-dmenu-desktop

    kondo

    lazydocker
    lazysql
    lefthook

    mdformat

    nil
    nixfmt-rfc-style
    nix-init
    nodejs_20

    oha

    pdftk
    pm2
    pnpm
    postman
    prettierd

    scc
    slack
    speedtest-cli
    syncthing

    trash-cli
    turso-cli

    unzip
    upscayl
    urban-cli

    watchexec

    xfce.ristretto
    xh
  ];
}
