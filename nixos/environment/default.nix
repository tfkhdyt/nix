let
  sessionVariables = import ./session-variables.nix;
  shellAliases = import ./shell-aliases.nix;
in {
  imports = [
    ./packages.nix
  ];
  environment = {
    inherit sessionVariables shellAliases;
  };
}