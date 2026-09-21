


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
            "application/pdf" = "org.pwmt.zathura-pdf-mupdf.desktop";
            "text/html" = "org.qutebrowser.qutebrowser.desktop";
        };
    };

}
