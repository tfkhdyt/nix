{
  imports = [
    ./dunst.nix
  ];
  services = {
    hypridle = import ./hypridle.nix;
    hyprpaper = import ./hyprpaper.nix;
    
    ssh-agent.enable = true;
  };
}