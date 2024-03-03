{
  description = "System flake";

  inputs = {
      nixpkgs.url = "nixpkgs/nixos-unstable";

      home-manager = {
          url = "github:nix-community/home-manager";
          inputs.nixpkgs.follows = "nixpkgs";
      };
  };

  outputs = {self, nixpkgs, ...}@inputs:
  let 
    lib = nixpkgs.lib;
  in
  {
    nixosConfigurations = {
        nixos = lib.nixosSystem {
            system = "x86_64-linux";
            specialArgs = {inherit inputs;};
            modules = [ 
            ./configuration.nix 
            inputs.home-manager.nixosModules.default
            ];
          };
      };
  };

}
