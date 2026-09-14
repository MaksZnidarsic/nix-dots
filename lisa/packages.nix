


{ config, pkgs, ... } : {

    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        git killall gnumake pkg-config tree wget

        python3
    ];

    programs.vim = {
        enable = true;
        defaultEditor = true;

        package = (pkgs.vim.override {}).customize {
            name = "vim";
            vimrcConfig.customRC = ''
                syntax enable
                colorscheme default

                map <C-k> {
                map <C-j> }

                set relativenumber
                set number

                set smartindent
                set tabstop=4
                set softtabstop=4
                set shiftwidth=4
                set expandtab

                set scrolloff=15
            '';
        };
    };

}
