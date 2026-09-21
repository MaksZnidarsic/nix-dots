


{ lib, pkgs, ... } : {

    programs.bash = {
        enable = true;

        bashrcExtra = lib.readFile ./bashrc;

        profileExtra = ''
            sway
        '';

        shellAliases = {
            clear = "clear; tput cup $LINES 0";
            ls = "ls --all --color=auto";
        };
    };

}
