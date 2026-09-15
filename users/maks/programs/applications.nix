


{ config, ... } : {

    xdg.desktopEntries = {
        vesktop = {
            name = "Vesktop";
            exec = "vesktop";
        };

        vimiv = {
            name = "Vimiv";
            exec = "vimiv";
        };

        vlc = {
            name = "VLC";
            exec = "vlc";
        };
    };

    xdg.mimeApps = {
        enable = true;

        defaultApplications = {
            "application/pdf" = "zathura.desktop";
            "text/html" = "qutebrowser.desktop";
        };
    };

}
