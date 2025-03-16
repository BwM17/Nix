{config, lib, pkgs, ...}: {

  imports = [
    ./base.nix
    ./nixos/base/default.nix
    ./nixos/desktop/default.nix
  ];
}