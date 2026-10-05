


{ pkgs, ... } : {

    home.packages = with pkgs; [
        swaybg
    ];

    home.file.".config/wallpaper/launch.sh" = {
        executable = true;
        source = ./launch.sh;
    };
    home.file.".config/wallpaper/papers/" = {
        recursive = true;
        source = ./faye;
    };

}
