


{ pkgs, ... } : {


    # will consider making eww and sway their own repositories as
    # it makes configuring them way easier -- no longer pure though
    home.packages = with pkgs; [
        eww
    ];

    home.file.".config/eww/eww.yuck".source = ./eww.yuck;
    home.file.".config/eww/eww.scss".source = ./eww.scss;
    home.file.".config/eww/launch.sh".source = ./launch.sh;

    home.file.".config/eww/scripts" = {
        source = ./scripts;
        executable = true;
        recursive = true;
    };

}
