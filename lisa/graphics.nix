


{ config, pkgs, ... } : {

    # sway stuff
    security.polkit.enable = true;
    hardware.graphics.enable = true;

    xdg.portal = { # TODO figure out how to do this via home manager
        enable = true;
        xdgOpenUsePortal = true;

        wlr.enable = true;
        extraPortals = with pkgs; [
            xdg-desktop-portal
            xdg-desktop-portal-gtk
            xdg-desktop-portal-wlr
        ];

        config.common = {
            default = [ "gtk" ];
            "org.freedesktop.impl.portal.ScreenCast" = [ "wlr" ];
            "org.freedesktop.impl.portal.Screenshot" = [ "wlr" ];
        };
    };
    environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];

}
