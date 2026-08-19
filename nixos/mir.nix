# mir defaults

{ config, pkgs, ... }:

{

  # myname
  networking.hostName = "mir";

  # firewall
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 22 ];
    #allowedUDPPortRanges [
    #  { from = 4000; to = 4007; }
    #  { from = 8000; to = 8010; }
    #];
  };
  networking.nftables.enable = true;

  # offline usage
  nix = {
    gc.automatic = false;
    # settings.keep-outputs = true;
    # settings.keep-derivations = true;
  };

  # pkgs
  environment.systemPackages = with pkgs; [
    vim-full
    vimPlugins.vim-nix
    vimPlugins.vim-lastplace
    tmux
    pwgen
    libreoffice
    chromium
    gimp3
    imagemagick
    weechat
    gnome-tweaks
    gnome-terminal
    gnome-themes-extra
  ];

  # pkgs config
  environment.variables.EDITOR = "vim";

  # servers
  services.openssh.enable = true;

}
