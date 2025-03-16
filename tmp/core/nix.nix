{lib, ...}: {
  nix = {
    settings = {
      experimental-features = [ 
        "nix-command" 
        "flakes" 
      ];
    };
  }; 

  nixpkgs.config = {
    allowUnfree = true;
  }; 

  services.udev.extraRules = ''
	SUBSYSTEMS=="usb", ATTRS{idVendor}=="16d0", ATTRS{idProduct}=="0753", MODE:="0666"
	KERNEL=="ttyACM*", ATTRS{idVendor}=="16d0", ATTRS{idProduct}=="0753", MODE:="0666", ENV{ID_MM_DEVICE_IGNORE}="1"

  '';
}
