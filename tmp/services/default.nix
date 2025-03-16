{ config, lib, pkgs, ... } : {

 imports = [
  #./audio.nix 
  ./networking.nix 
  #./monitor.nix  
  #./tlp.nix
  #./auto-cpufreq.nix  
  ./docker.nix
  ./virt.nix
 ]; 

}
