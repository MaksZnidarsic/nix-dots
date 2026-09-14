


{ pkgs, ... } : {

    programs.bash = {
        enable = true;
        bashrcExtra = ''
            export PS1=' \033[1;35m\w\033[0m ';

            tput cup $LINES 0
        '';

        profileExtra = ''
            sway
        '';

        shellAliases = {
            clear = "clear; tput cup $LINES 0";
            ls = "ls --all --color=auto";
        };
    };

}
