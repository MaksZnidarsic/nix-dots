


{ config, pkgs, ... } : {

    networking.hostName = "lisa";

    networking.networkmanager = {
        enable = true;
        wifi = {
            scanRandMacAddress = false;
            backend = "iwd";
        };
    };

    environment.systemPackages = with pkgs; [
        networkmanagerapplet
    ];

    networking.wireless = {
        enable = false;
        iwd.enable = true;
    };

    # prevents them from clashing with network manager
    networking.dhcpcd.enable = false;
    systemd.network.enable = false;
    boot.initrd.systemd.network.enable = false;

}
