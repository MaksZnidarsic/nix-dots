


{ pkgs, ... } : {

    home.packages = with pkgs; [
        cbonsai
        fastfetch
        ffmpeg
        file
        libnotify
        ninja
        pandoc
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
        stremio-linux-shell
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
