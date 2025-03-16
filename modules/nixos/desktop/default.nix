{config, lib, pkgs, ...}: { 

  services.xserver = {  
    enable = true;  
    xkb = {  
    layout = "de"; 
    variant = "";  
    }; 
  };

  services.displayManager.sddm.enable = true; 

  imports = [  
    ./audio.nix
    ./fonts.nix
    ./hyprland.nix
  ]; 
} 
