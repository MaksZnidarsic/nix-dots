


{ config, lib, pkgs, ... } : {

    home.file.".config/sway/config".source = ./config;

    home.packages = with pkgs; [
        grim pulseaudio slurp wl-clipboard
    ];

}
