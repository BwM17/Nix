{ config, libs, pkgs, ... } : { 
 
 imports = [ 
  ./tmux.nix 
  ./zsh.nix 
  ./starship.nix
 ]; 
 
 environment.systemPackages = with pkgs; [     
  hyprlandPlugins.hyprexpo
  nasm 
  pkg-config  
  sqlite
  gtk3 
  zfs
  qemu
  gnumake
  rofi 
  nitrogen
  git    
  gcc 
  usbutils
  libusb1
  dbus 
  dbeaver-bin
  gdb 
  elegant-sddm
  neovim
  kitty 
  acpi 
  socat 
  neofetch 
  wirelesstools 
  docker
  jq 
  libedit  
  cargo  
  rustc 
  steam 
  dbeaver-bin
 ];  

  nixpkgs.config.permittedInsecurePackages = [
    "electron-27.3.11"
  ];
}
