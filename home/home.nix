{config, lib, pkgs, specialArgs, ...}: 
let 
  options = specialArgs.my-opts;
in {
  home = {  
    stateVersion = "24.11";
    username = "${options.username}"; 
    homeDirectory = "/home/${options.username}"
  };

  programs.home-manager.enable = true;
}