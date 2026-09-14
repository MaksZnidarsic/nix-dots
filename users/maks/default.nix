


{ config, pkgs, ... } : {

    home = {
        username = "maks";
        homeDirectory = "/home/maks";

        stateVersion = "26.05";
    };

    imports = [
        ./desktop
        ./programs
    ];

}
