


{ config, lib, pkgs, ... } : {

    home.packages = with pkgs; [
        swayfx

        brightnessctl grim jq pulseaudio slurp wl-clipboard
    ];

    home.file.".config/sway/config".source = ./config;

}
