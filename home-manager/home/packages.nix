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
    gowall
    go-tools
    gping
    grimblast

    handbrake
    hoppscotch
    hyperfine
    hyprpicker

    imagemagick
    impl

    j4-dmenu-desktop
    joplin-desktop

    kondo

    lazydocker
    lefthook
    legcord
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
    pipes
    pm2
    pnpm
    pocketbase
    poppler_utils
    postman
    prettierd
    protonup-qt

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
    # wl-screenrec # wait for fix
    wrk

    xfce.ristretto
    xh
  ];
}
