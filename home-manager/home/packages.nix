{ pkgs, ... }:
{
  home.packages = with pkgs; [
    audacity

    beekeeper-studio
    bc
    bemenu
    brave

    cargo-tauri
    cargo-watch
    cloudflared

    dbmate
    distrobox
    duckstation

    ffmpegthumbnailer
    ffmpeg-full
    file
    file-roller
    flatpak-builder

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
    jq

    kondo

    lazydocker
    lefthook
    legcord
    localsend
    lutris

    mdformat

    nil
    nixfmt-rfc-style
    nix-init
    nodejs_22

    ouch

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
    simple-scan
    slack
    speedtest-cli
    syncthing

    trash-cli
    turso-cli
    typst

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
