{
  description = "System flake";

  inputs = {
      nixpkgs.url = "nixpkgs/nixos-unstable";

      home-manager = {
          url = "github:nix-community/home-manager";
          inputs.nixpkgs.follows = "nixpkgs";
      };

      nvf.url = "github:notashelf/nvf";

      #zig.url = "github:mitchellh/zig-overlay";
  };

  outputs = {self, nixpkgs, home-manager, nvf, ...}@inputs:
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
            home-manager.nixosModules.default
            ];
          };
      };

    homeConfigurations.juge = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [ 
      nvf.homeManagerModules.default
      ./home-manager/home.nix
      ];
    };
  };

}
