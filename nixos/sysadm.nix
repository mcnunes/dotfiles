# mir defaults

{ config, pkgs, ... }:

{

  # pkgs
  environment.systemPackages = with pkgs; [
    awscli2
    ansible
    webex
    sshpass
    terraform
  ];

}
