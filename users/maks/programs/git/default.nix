


{ pkgs, ... } : {

    programs.git = {
        enable = true;
        settings = {
            user.name = "MaksZnidarsic";
            user.email = "maks.znidarsic@gmail.com";
            credential.helper.store = true;
        };
    };

}
