


{ pkgs, ... } : {

    programs.neovim = {
    	enable = true;
        defaultEditor = true;

        vimAlias = true;
        viAlias = true;

        sideloadInitLua = true;
    };

    home.packages = with pkgs; [
        ripgrep
    ];

    xdg.desktopEntries.neovim = {
        noDisplay = true;
    };

}
