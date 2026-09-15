


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

        vencord.extraQuickCss = lib.readFile ./quick.css;
    };

}
