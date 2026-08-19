# nunes defaults

{ config, pkgs, ... }:

{

  # nunes
  users.users.nunes = {
    isNormalUser = true;
    home = "/home/some_user";
    description = "some_user";
    extraGroups = [
      "audio"
      "video"
      "dialout"
      "users"
      "networkmanager"
    ];

  # pkgs
  packages = with pkgs; [
    steam
    prismlauncher
    flatpak
    gnome-software
  ];

    # openssh.authorizedKeys.keys = [ "ssh-dss AAAAB3Nza... alice@foobar" ];
  };

  # flatpak
  services.flatpak.enable = true;

  # Enable 32-bit graphics for Steam
  hardware.graphics.enable32Bit = true;
  programs.steam.enable = true;

}
