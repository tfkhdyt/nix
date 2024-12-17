{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    alsa-utils

    bat
    brightnessctl

    duf
    dust

    eza

    fd

    gcc13
    gnome-tweaks

    libnotify
    # lxqt.lxqt-policykit

    openssl

    php
    pkg-config
    podman-compose
    procs
    pwvucontrol

    redis
    ripgrep

    sd
    system-config-printer

    wl-clipboard
  ];
}
