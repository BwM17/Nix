{ config, lib, pkgs, ... } : {  

  system.stateVersion = "24.11";
  
  # allowing unfree software
  nixpkgs.config.allowUnfree = true;

  #enable experimental fetures
  nix.settings.experimental-features = [ "nix-command" "flakes"];

  imports = 
    [ 
      ./hosts/hermes/default.nix
      ./modules/default.nix
    ]; 
}