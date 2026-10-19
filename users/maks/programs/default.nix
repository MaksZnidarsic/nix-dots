


{ pkgs, ... } : {

    home.packages = with pkgs; [
        cbonsai
        fastfetch
        file
        libnotify
        ninja
        xdg-utils
        yt-dlp
        zip unzip

        gcc cmake
        lua
        rustc cargo
        tree-sitter
        typst

        gimp
        libreoffice-qt # might add dependencies later (wiki)
        networkmanagerapplet
        qutebrowser
        stremio-linux-shell
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
