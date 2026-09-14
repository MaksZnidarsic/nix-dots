


{

    description = "";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

        home-manager = {
            url = "github:nix-community/home-manager/release-26.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = inputs @ { nixpkgs, home-manager, ... } : {
        nixosConfigurations = {
            lisa = nixpkgs.lib.nixosSystem {
                modules = [
                    ./lisa

                    home-manager.nixosModules.home-manager {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;

                        home-manager.users.maks = import ./users/maks;
                    }
                ];
            };
        };
    };

}
