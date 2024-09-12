{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # beekeeper-studio
    bc
    bemenu
    brave

    cloudflared

    dbmate
    discord
    duckstation

    erlang

    ffmpeg-full
    file-roller

    genact
    ghc
    gimp
    # gleam
    gnumake
    gobang
    # gofumpt
    # goimports-reviser
    # golangci-lint
    # golines
    # gomodifytags
    # gopls
    # go-tools
    gping
    grimblast

    handbrake
    # haskell-language-server
    hyperfine

    imagemagick
    impl

    j4-dmenu-desktop

    kondo

    lazydocker
    lefthook

    maven
    mdformat

    nil
    nixfmt-rfc-style
    nodejs_20

    oha

    pcsx2
    pdftk
    pm2
    pnpm
    pocketbase
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
    wl-screenrec

    xfce.ristretto
    xh
  ];
}
