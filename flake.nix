{
  description = "garnix rss bridge nixosConfiguration template";

  # Add all your dependencies here
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-24.05";
    garnix-lib.url = "github:garnix-io/garnix-lib";
  };

  outputs = inputs: {
    # Define the configuration for the 'server'.
    nixosConfigurations.server = inputs.nixpkgs.lib.nixosSystem {
      modules = [
        inputs.garnix-lib.nixosModules.garnix

        # This is where the work happens
        ./hosts/rss-bridge.nix
      ];
    };
  };
}
