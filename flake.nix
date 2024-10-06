{
  description = "TFKHDYT Nix Flake config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Nixvim
    nixvim = {
      url = "github:nix-community/nixvim";
      # If using a stable channel you can use `url = "github:nix-community/nixvim/nixos-<version>"`
      inputs.nixpkgs.follows = "nixpkgs";
    };

    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

    nix-vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # zen-browser.url = "github:MarceColl/zen-browser-flake";
  };

  outputs =
    { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      inherit (self) outputs;
    in
    {
      # NixOS configuration entrypoint
      # Available through 'nixos-rebuild --flake .#your-hostname'
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs outputs;
          };
          # > Our main nixos configuration file <
          modules = [
            ./nixos/configuration.nix
            inputs.home-manager.nixosModules.home-manager
            (
              { pkgs, ... }:
              {
                nixpkgs.overlays = [ inputs.rust-overlay.overlays.default ];
                environment.systemPackages = [
                  (pkgs.rust-bin.stable.latest.default.override {
                    extensions = [ "rust-src" ];
                  })

                  # inputs.zen-browser.packages."${system}".default
                ];
              }
            )
            {
              home-manager = {
                users.tfkhdyt = import ./home-manager;
                extraSpecialArgs = {
                  inherit inputs outputs;
                };
              };
            }
            inputs.stylix.nixosModules.stylix
          ];
        };
      };
    };
}
