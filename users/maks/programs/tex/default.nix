


{ pkgs, ... } :
let # from the wiki
    tex = (pkgs.texliveBasic.withPackages (
        ps : with ps; [
            amsmath geometry hyperref parskip old-arrows titlesec
        ]
    ));
in {

    home.packages = with pkgs; [
        tex
    ];

}
