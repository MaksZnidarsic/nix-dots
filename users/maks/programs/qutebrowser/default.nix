


{ pkgs, ... } : {

    home.packages = with pkgs; [
        qutebrowser
    ];

    xdg.desktopEntries."org.qutebrowser.qutebrowser" = {
        name = "Qutebrowser";
    };

}
