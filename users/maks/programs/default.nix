


{ pkgs, ... } : {

    home.packages = with pkgs; [
        zip unzip
        xdg-utils
        fastfetch
        file

        ninja

        cargo
        gcc cmake

        qutebrowser
    ];

    imports = [
        ./alacritty
        ./git
        ./neovim
        ./network-manager-applet
        ./qutebrowser
        ./vesktop
        ./vlc
        ./zathura

        ./applications.nix
    ];

}
