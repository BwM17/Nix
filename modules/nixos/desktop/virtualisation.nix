{ config, lib, pkgs, specialArgs, ...}: 
  let 
    options = specialArgs.my-opts;
  in
{   
    programs.virt-manager.enable = true; 
    users.groups.libvirtd.members = [ "${options.username}" ];

    virtualisation = { 
      docker.enable = true;   
      libvirtd.enable = true;
    };
}