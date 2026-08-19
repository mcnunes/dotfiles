# mir defaults

{ config, pkgs, ... }:

{

  # pkgs
  environment.systemPackages = with pkgs; [
    postgresql
    pg_activity
    mariadb_114
  ];

  # postgresal
  services.postgresql = {
    enable = true;
    ensureDatabases = [ "mydatabase" ];
    authentication = ''
      # type  database  DBuser  auth-method
      local   all       all     trust
    '';
  };

}
