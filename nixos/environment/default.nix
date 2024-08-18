{
  imports = [
    ./packages.nix
    ./variables.nix
  ];
  environment = {
    # variables = import ./variables.nix;
    shellAliases = import ./shell-aliases.nix;
    localBinInPath = true;
  };
}
