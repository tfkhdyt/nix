{ pkgs, ... }:
{
  home.packages = with pkgs; [
    audacity

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
    gofumpt
    goimports-reviser
    golangci-lint
    golines
    gomodifytags
    gopls
    go-tools
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
    lutris

    maven
    mdformat

    nil
    nixfmt-rfc-style
    nodejs_22

    oha

    pcsx2
    pdftk
    pm2
    pnpm
    pocketbase
    postman
    prettierd

    scc
    shc
    slack
    speedtest-cli
    syncthing

    trash-cli
    turso-cli

    unzip
    upscayl
    urban-cli

    watchexec
    wf-recorder
    wl-screenrec

    xfce.ristretto
    xh
  ];
}
