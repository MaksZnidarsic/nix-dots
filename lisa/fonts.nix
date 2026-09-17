


{ pkgs, ...  } : {

    fonts = {
        packages = with pkgs; [
            nerd-fonts.ubuntu-mono
        ];
        enableDefaultPackages = true;

        fontconfig.defaultFonts = {
            monospace = [ "UbuntuMono Nerd Font" ];
        };
    };

}
