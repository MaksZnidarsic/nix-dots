


{ pkgs, ... } : {

    home.packages = with pkgs; [
        vimiv-qt
        # TODO add config
    ];

}
