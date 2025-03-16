 { config, lib, pkgs, ... } : {
  
   users.users = { 
    redlotus  = {  
     shell = pkgs.zsh;
     isNormalUser = true; 
     description = "redlotus";
     extraGroups = [ 
      "wheel"
      "networkmanager"
      "video"
      "audio"  
      "docker" 
      "dialout"
     ];  

     packages = with pkgs; [
      brave
      discord
      dolphin 
      lsd 
      vscode
      logseq 
      brightnessctl 
      playerctl
      dotnet-sdk_8
      dotnet-aspnetcore_8
      dotnet-runtime_8
     ]; 
    }; 
  }; 
 
 home-manager.users.redlotus = { pkgs, ... }: {  
  home.stateVersion = "24.05"; 

  home.packages = with pkgs; [  
   gtop  
   starship  
   eww 
  ] ++ 
  (
  if (config.services.xserver.windowManager.bspwm.enable == true) then with pkgs;[    
    sxhkd
   ] 
  else (if (config.programs.hyprland.enable == true) then  with pkgs; [ 
   swww
   wofi 
   wdisplays
  ] 
  else []
  ));  

  imports = [
    ./packages/default.nix 
    ./graphical/default.nix
  ];
};

}
