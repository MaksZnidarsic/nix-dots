


{ config, lib, pkgs, ... } : {

    imports = [
        ./hardware-configuration.nix # hardware scan

        ./audio.nix
        ./boot.nix
        ./fonts.nix
        ./graphics.nix
        ./language.nix
        ./network.nix
        ./packages.nix
        ./users.nix
    ];


    time.timeZone = "Europe/Paris";

    nix.gc = {
        automatic = lib.mkDefault true;
        dates = lib.mkDefault "weekly";
        options = lib.mkDefault "--delete-older-than 7d";
    };

    programs.nix-ld.enable = true;

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    system.stateVersion = "26.05"; # don't touch

}
