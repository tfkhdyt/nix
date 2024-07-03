{ pkgs }:
{
  users.users.tfkhdyt = {
    isNormalUser = true;
    description = "Taufik Hidayat";
    extraGroups = [
      "networkmanager"
      "wheel"
      "adbusers"
    ];
    shell = pkgs.zsh;
  };
}
