


{ config, ... } : {

    xdg.desktopEntries = {
        shutdown = {
            name = "shutdown";
            exec = "shutdown now";
        };

        vesktop = {
            name = "Vesktop";
            exec = "vesktop";
        };

        vimiv = {
            name = "Vimiv";
            exec = "vimiv";
        };

        vlc = {
            name = "Vlc";
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
