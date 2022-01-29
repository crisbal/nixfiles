{
  description = "NixOs Configuration and dotfiles";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-21.11";
  };
  outputs = inputs: {
    nixosConfigurations = {
      thinkpad = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/thinkpad/configuration.nix
        ];
        specialArgs = { inherit inputs; };
      };
    };
  };
}
