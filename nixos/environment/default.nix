{
  imports = [ ./packages.nix ];
  environment = {
    sessionVariables = import ./session-variables.nix;
    shellAliases = import ./shell-aliases.nix;
  };
}
