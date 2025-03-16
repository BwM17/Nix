{config, lib, pkgs, ...}: {
  programs.hyprland.enable = true; 

  environment.systemPackages = with pkgs; [ 
    kitty
    wofi 
  ]; 

}