{config, lib, pkgs, ...}: {

  imports = [ 
    ./boot.nix
    ./console.nix
    ./networking.nix
    #./nix.nix
    ./packages.nix
    ./user-groups.nix
  ]; 

}