


{ config, lib, ... } : {

    # .desktop files are in
    # /etc/profiles/per-user/<user>/share/applications
    # /run/current-system/sw/share/applications
    xdg.desktopEntries = {

        shutdown = {
            name = "Shutdown";
            exec = "shutdown now";
        };

    };

    xdg.mimeApps = {
        enable = true;

        defaultApplications = {
            "application/epub+zip" = "org.pwmt.zathura-pdf-mupdf.desktop";
            "application/pdf" = "org.pwmt.zathura-pdf-mupdf.desktop";

            "image/jpeg" = "org.pwmt.zathura-pdf-mupdf.desktop";
            "image/jpg" = "org.pwmt.zathura-pdf-mupdf.desktop";
            "image/png" = "org.pwmt.zathura-pdf-mupdf.desktop";
            "image/svg+xml" = "org.pwmt.zathura-pdf-mupdf.desktop";

            "text/html" = "org.qutebrowser.qutebrowser.desktop";
            "text/xml" = "org.qutebrowser.qutebrowser.desktop";

            "x-scheme-handler/http" = "org.qutebrowser.qutebrowser.desktop";
            "x-scheme-handler/https" = "org.qutebrowser.qutebrowser.desktop";
        };
    };

}
