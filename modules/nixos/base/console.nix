{config, lib, pkgs, ...}: {
    console = { 
      earlySetup = true;
      keyMap = "de"; 
      font="${pkgs.terminus_font}/share/consolefonts/ter-132b.psf.gz";  
      packages = with pkgs; [ terminus_font ];
    }; 
}