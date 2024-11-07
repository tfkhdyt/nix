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
    gnome-disk-utility

    libnotify
    lxqt.lxqt-policykit

    openssl

    php
    podman-compose
    procs
    pwvucontrol

    redis
    ripgrep

    sd

    wl-clipboard
  ];
}
