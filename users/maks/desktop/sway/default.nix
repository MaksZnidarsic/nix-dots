


{ config, lib, pkgs, ... } : {

    home.file.".config/sway/config".source = ./config;
    home.file.".config/sway/wallpaper.png".source = ./faye.png;

    home.packages = with pkgs; [
        grim pulseaudio slurp swaybg wl-clipboard
    ];

}
