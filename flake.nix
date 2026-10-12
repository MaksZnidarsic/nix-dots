


{

    description = "";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable"; #-26.05";

        swayfx = {
            url = "github:wlrfx/swayfx";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        home-manager = {
            url = "github:nix-community/home-manager";
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
