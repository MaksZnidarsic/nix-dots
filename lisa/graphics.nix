


{ config, lib, pkgs, ... } : {

    programs.sway = {
        enable = true;
        extraPackages = with pkgs; lib.mkForce [
            slurp
        ];
    };

    xdg.portal.wlr.settings.screencast = {
        output_name = "eDP-1";
        chooser_type = "simple";  
        chooser_cmd = "${pkgs.slurp}/bin/slurp -f 'Monitor: %o' -or";  
    };  

}
