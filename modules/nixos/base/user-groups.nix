{  config, lib, pkgs, ... }: {
  users.users.redlotus = {     
    isNormalUser = true; 
    extraGroups = [ 
      "networkmanager"
      "wheel"
      "docker"
    ];    
  };  
}
