{
  description = "System flake";

  inputs = {
      nixpkgs.url = "nixpkgs/nixos-unstable";

      home-manager = {
          url = "github:nix-community/home-manager";
          inputs.nixpkgs.follows = "nixpkgs";
      };
  };

  outputs = {self, nixpkgs, home-manager,...}@inputs:
  let 
    lib = nixpkgs.lib;
    system = "x86_64-linux";
  in
  {
    nixosConfigurations = {
        nixos = lib.nixosSystem {
            system = "x86_64-linux";
            specialArgs = {inherit inputs;};
            modules = [ 
            ./nixos/configuration.nix 
            inputs.home-manager.nixosModules.default
            ];
          };
      };

    homeConfigurations.juge = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [ ./home-manager/home.nix ];
    };
  };

}
