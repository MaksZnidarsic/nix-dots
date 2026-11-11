


{ pkgs, ...  } : {

    fonts = {
        packages = with pkgs; [
            cm_unicode courier-prime nerd-fonts.ubuntu-mono
        ];
        enableDefaultPackages = true;

        fontconfig.defaultFonts = {
            monospace = [ "UbuntuMono Nerd Font" ];
        };
    };

}
