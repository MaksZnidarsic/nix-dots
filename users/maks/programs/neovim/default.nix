


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

    xdg.desktopEntries.nvim = {
        name = "Neovim";
        noDisplay = true;
    };

}
