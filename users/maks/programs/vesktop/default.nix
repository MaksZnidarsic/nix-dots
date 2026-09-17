


{ lib, pkgs, ... } : {

    programs.vesktop = {
        enable = true;

        settings = {
            arRPC = true;
            hardwareAcceleration = true;
            minimizeToTray = false;
            tray = false;

            discorBranch = "stable";
        };
        
        vencord = {
            extraQuickCss = lib.readFile ./quick.css;
            settings.plugins = {
                MessageLogger.enable = true;
                CallTimer.enable = true;
                ClearUrls.enable = true;
                MemberCount.enable = true;
                OnePingPerDM.enable = true;
            };
        };
    };

}
