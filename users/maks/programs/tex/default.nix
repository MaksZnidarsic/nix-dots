


{ pkgs, ... } :
let # from the wiki
    tex = (pkgs.texliveBasic.withPackages (
        ps : with ps; [
            amsmath hyperref old-arrows
        ]
    ));
in {

    home.packages = with pkgs; [
        tex
    ];

}
