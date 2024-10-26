{ pkgs, ... }:
{
  home.packages = with pkgs; [
    audacity

    beekeeper-studio
    bc
    bemenu
    brave

    cargo-watch
    cloudflared

    dbmate
    discord
    distrobox
    duckstation

    ffmpeg-full
    file-roller

    gamemode
    genact
    ghostscript
    gimp
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
    hyperfine
    hyprpicker

    imagemagick
    impl

    j4-dmenu-desktop
    joplin-desktop

    kondo

    lazydocker
    lefthook
    localsend
    lutris

    maven
    mdformat

    nil
    nixfmt-rfc-style
    nodejs_22

    # oha

    pcsx2
    pdftk
    pm2
    pnpm
    pocketbase
    poppler_utils
    postman
    prettierd

    scc
    scrcpy
    sea-orm-cli
    shc
    simple-scan
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
    winbox4
    wl-screenrec
    wrk

    xfce.ristretto
    xh
  ];
}
