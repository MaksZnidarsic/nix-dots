


{ config, lib, ... } : {

    nix.gc = {
        automatic = lib.mkDefault true;
        dates = lib.mkDefault "Mon,Fri"; # biweekly
        options = lib.mkDefault "--delete-older-than 3d";
    };

}
