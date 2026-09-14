


{ config, ... } : {

    users.users."maks" = {
        isNormalUser = true;
        description = "";

        extraGroups = [
            "audio"
            "networkmanager"
            "video"
            "wheel"
        ];
    };

}
