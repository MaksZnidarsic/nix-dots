


{ pkgs, ... } : {

    home.packages = with pkgs; [
        fastfetch
        file
        libnotify
        ninja
        xdg-utils
        yt-dlp
        zip unzip

        gcc cmake
        rustc cargo
        typst

        gimp
        libreoffice-qt # might add dependencies later (wiki)
        networkmanagerapplet
        qutebrowser
        transmission_4-qt
        vlc
    ];

    imports = [
        ./alacritty
        ./git
        ./neovim
        ./python
        ./tex
        ./vesktop
        ./zathura

        ./applications.nix
    ];

}
