{config, specialArgs, lib, ...}:  
let 
  options = specialArgs.my-opts;
in {
  networking.hostName = "${options.hostname}";
  networking.networkmanager.enable = true;  

  #ssh setting?
}