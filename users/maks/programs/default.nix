


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
        vlc
    ];

    imports = [
        ./alacritty
        ./git
        ./neovim
        ./vesktop
        ./vimiv
        ./zathura

        ./applications.nix
    ];

}
