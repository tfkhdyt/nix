{
  ls = "eza --icons --group-directories-first";
  ll = "eza -lbh --icons --group-directories-first";
  lazypodman = "DOCKER_HOST=unix:///run/user/1000/podman/podman.sock lazydocker";
  docker-compose = "podman-compose";
}
