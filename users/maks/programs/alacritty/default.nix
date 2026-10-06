


{ pkgs, ... } : {

    home.packages = with pkgs; [
        alacritty
    ];

    home.file.".config/alacritty/alacritty.toml".source = ./config.toml;
    home.file.".config/alacritty/theme.toml".source = ./theme.toml;

}
