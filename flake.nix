{
	description = "My NixOS flake setup";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
	};

	outputs = {self, nixpkgs, ...}@inputs: {
		nixosConfigurations.sakg-nixos = nixpkgs.lib.nixosSystem {
			modules = [
				./configuration.nix
			];
		};
	};
}
