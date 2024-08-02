{
  imports = [ ./packages.nix ];
  environment = {
    variables = import ./variables.nix;
    shellAliases = import ./shell-aliases.nix;
    localBinInPath = true;
  };
}
