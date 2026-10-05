


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

        gcc cmake
        rustc cargo
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
        ./python
        ./tex
        ./vesktop
        ./zathura

        ./applications.nix
    ];

}
