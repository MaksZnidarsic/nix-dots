


{ pkgs, ...  } : {

    fonts = {
        packages = with pkgs; [
            nerd-fonts.ubuntu-mono
        ];

        fontconfig.defaultFonts = {
            monospace = [ "UbuntuMono Nerd Font" ];
        };
    };

}
