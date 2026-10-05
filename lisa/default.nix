


{ config, lib, pkgs, ... } : {

    imports = [
        ./hardware-configuration.nix # hardware scan

        ./audio.nix
        ./boot.nix
        ./fonts.nix
        ./garbage-collection.nix
        ./graphics.nix
        ./language.nix
        ./network.nix
        ./packages.nix
        ./time.nix
        ./users.nix
    ];

    programs.nix-ld.enable = true;

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    system.stateVersion = "26.05"; # don't touch

}
