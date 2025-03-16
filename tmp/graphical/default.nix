{ config, lib, pkgs, ... } : {
 
 imports = [
  ./hyprland.nix  
  ./i3.nix
  ./fonts.nix 
 ];  
	services.displayManager.sddm.enable = true;	 
	services.displayManager.sddm.theme = "/run/current-system/sw/share/sddm/themes/Elegant";
 }
