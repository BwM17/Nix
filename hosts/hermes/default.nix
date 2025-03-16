{config, lib, pkgs, ...}: {
    imports = [ 
      ./hardware-configuration.nix 
      ./firmware/nvidia.nix 
      ./firmware/tlp.nix
    ];
}