{config, lib, pkgs, ...}: {

  #do not use users config 
  environment.variables.EDITOR = "nvim --clean";

  environment.systemPackages = with pkgs; [
    
    #coretools
    fastfetch
    neovim 
    git 
    tmux 

    #archives
    zip
    gnugrep
    gnused
    jq

    #networking tools 
    dnsutils
    curl
    wget 
    wirelesstools

    #misc
    file 
    tree
    which
    rsync  

  ]; 


}