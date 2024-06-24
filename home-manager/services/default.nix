let 
  hypridle = import ./hypridle.nix;
  hyprpaper = import ./hyprpaper.nix;
in {
  imports = [
    ./dunst.nix
  ];
  services = {
    inherit hypridle hyprpaper;
    
    ssh-agent.enable = true;
  };
}