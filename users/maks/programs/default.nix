


{ pkgs, ... } : {

    home.packages = with pkgs; [
        brightnessctl
        fastfetch
        file
        libnotify
        ninja
        xdg-utils
        yt-dlp
        zip unzip

        cargo
        gcc cmake
        typst

        gimp
        libreoffice-qt # might add dependencies later (wiki)
        networkmanagerapplet
        qutebrowser
        vlc
    ];

    imports = [
        ./alacritty
        ./git
        ./neovim
        ./tex
        ./vesktop
        ./zathura

        ./applications.nix
    ];

}
