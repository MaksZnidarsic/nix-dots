


{ pkgs, ... } : {

    home.packages = with pkgs; [
        python3
    ];

    # to allow for pip and such
    # will move to separate file when python is not the only one who needs it
    home.sessionVariables = {  
        LD_LIBRARY_PATH = with pkgs; "${lib.makeLibraryPath [  
            curl
            openssl  
            stdenv.cc.cc.lib
            zlib  
        ]}";  
    };

}
