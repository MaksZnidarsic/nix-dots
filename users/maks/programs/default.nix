


{ pkgs, ... } : {

    home.packages = with pkgs; [
        zip unzip
        brightnessctl
        xdg-utils
        fastfetch
        file
        libnotify

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
        ./network-manager-applet
        ./vesktop
        ./zathura

        ./applications.nix
    ];

}
