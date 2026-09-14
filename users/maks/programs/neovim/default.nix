


{ pkgs, ... } : {

    programs.neovim = {
    	enable = true;

        vimAlias = true;
        viAlias = true;

        defaultEditor = true;

        sideloadInitLua = true;
    };

    home.packages = with pkgs; [
        ripgrep
    ];

}
