{ pkgs, ... }:
{
  users.users.tfkhdyt = {
    isNormalUser = true;
    description = "Taufik Hidayat";
    extraGroups = [
      "networkmanager"
      "wheel"
      "adbusers"
      "scanner"
      "lp"
    ];
    shell = pkgs.zsh;
  };
}
