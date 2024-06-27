{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    bat
    dust
    duf
    eza
    fd
    procs
    ripgrep
    sd
    gcc13
    redis
    wl-clipboard-rs
    alsa-utils
    brightnessctl
    libnotify
    pwvucontrol
    lxqt.lxqt-policykit
    openssl
  ];
}
