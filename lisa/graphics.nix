


{ config, pkgs, ... } : {

    # sway stuff
    security.polkit.enable = true;
    hardware.graphics.enable = true;

    xdg.portal = { # TODO figure out how to do this via home manager
        enable = true;

        wlr.enable = true;
        extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

        config.common.default = [ "gtk" ];
    };
    environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];

}
