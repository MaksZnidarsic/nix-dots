


{ config, pkgs, ... } : {

    #programs.sway.enable = true;

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
        ];

        config.sway = {
            default = [ "gtk" ];
            "org.freedesktop.impl.portal.ScreenCast" = [ "wlr" ];
            "org.freedesktop.impl.portal.Screenshot" = [ "wlr" ];
        };
    };
    environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];

    /*
    environment.systemPackages = with pkgs; [
        wmenu # output chooser for desktop portal
        wofi
        mew
        fuzzel
    ];
    */

}
