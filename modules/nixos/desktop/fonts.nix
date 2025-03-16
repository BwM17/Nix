{ config, pkgs, ... } : {
 
 fonts.packages = with pkgs; [ 
  noto-fonts
  noto-fonts-cjk-sans
  noto-fonts-emoji
  liberation_ttf 
  fira-code 
  victor-mono
  fira-code-symbols
  (nerdfonts.override {
   fonts = [ "Hack" "Iosevka" ]; 
  })
 ];
}
