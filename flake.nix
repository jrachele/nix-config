{
  description = "System flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf.url = "github:notashelf/nvf";

    audio = {
      url = "github:polygon/audio.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    #zig.url = "github:mitchellh/zig-overlay";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nvf,
    audio,
    ...
  } @ inputs: let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
      overlays = [audio.overlays.default];
    };
  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit pkgs;
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

    devShells.${system}.default = pkgs.mkShell {
      BuildInputs = with pkgs; [
        glfw-wayland
        wayland
      ];
      shellHook = ''
        export LD_LIBRARY_PATH=${pkgs.wayland}/lib:$LD_LIBRARY_PATH
      '';
      #LD_LIBRARY_PATH = nixpkgs.lib.makeLibraryPath (with nixpkgs; [
      #  wayland
      #  xorg.libX11
      #  # any other libraries that need to be dynamically linked to
      #]);
    };
  };
}
