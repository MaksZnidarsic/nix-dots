


{ config, lib, pkgs, ... } : {

    programs.sway = {
        enable = true;
        package = pkgs.swayfx;
        extraPackages = with pkgs; lib.mkForce [
            slurp
        ];
    };

    hardware.graphics.enable = true;

    xdg.portal = {
        enable = true;
        wlr.enable = true;

        extraPortals = with pkgs; [
            xdg-desktop-portal-gtk
        ];
    };

    xdg.portal.wlr.settings.screencast = {
        output_name = "eDP-1";
        chooser_type = "simple";  
        chooser_cmd = "${pkgs.slurp}/bin/slurp -f 'Monitor: %o' -or";  
    };  

}
