


{ pkgs, ... } : {

    home.packages = with pkgs; [
        zip unzip
        fastfetch

        ninja

        cargo
        gcc cmake

        qutebrowser
        vlc
    ];

    imports = [
        ./alacritty
        ./git
        ./neovim
        ./vimiv
        ./zathura
    ];

}
