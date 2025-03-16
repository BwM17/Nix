{pkgs, ...}:{

  environment.systemPackages = with pkgs; [ 

    #systemcall monitoring 
    lsof

    #system monitoring  
    btop

    #system tools     
    usbutils
    ethtool

  ];

}