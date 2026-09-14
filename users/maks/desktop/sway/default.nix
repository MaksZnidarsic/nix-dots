


{ config, pkgs, ... } : {

    wayland.windowManager.sway = {
        enable = true;

        wrapperFeatures = {
            base = true;
            gtk = true;
        };
    };
    xdg.configFile."sway/config".enable = false;

    home.file.".config/sway/config".source = ./config;
    home.file.".config/sway/wallpaper.png".source = ./faye.png;

    home.packages = with pkgs; [
        pulseaudio swaybg
    ];

}
