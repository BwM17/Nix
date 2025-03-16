{ config, lib, pkgs, ... } : { 
  
  #enable OpenGl 
  hardware.graphics.enable = true; 

  services.xserver.videoDrivers = ["nvidia"]; 

  hardware.nvidia = { 
   modesetting.enable = false; 

   open = false; 
   nvidiaSettings = true;
   package = config.boot.kernelPackages.nvidiaPackages.stable;

  };


}
