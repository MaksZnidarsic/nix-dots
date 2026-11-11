


{ config, lib, pkgs, ... } : {

    home.packages = with pkgs; [
        #swayfx

        alsa-utils brightnessctl grim jq pulseaudio slurp wl-clipboard
    ];

    home.file.".config/sway/config".source = ./config;
    home.file.".config/sway/scripts" = {
        source = ./scripts;
        executable = true;
        recursive = true;
    };

}
