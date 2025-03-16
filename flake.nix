{
  description = "A simple NixOs System Configuration";  

  inputs = { 
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";  

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:    

    let  
      system = "x86_64-linux";  
      pkgs = nixpkgs.legacyPackages.${system};       

      my-opts = {
        username="redlotus";
        hostname="hermes"; 
      }; 

    in {  
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {    
          system = system;  
          specialArgs = {
            inherit my-opts;
          };   
          modules = [
            ./configuration.nix
          ];
      };
    }; 


      homeConfigurations = {
        ${my-opts.username} = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ 
            ./home/home.nix
          ];
        };
      };
  }; 
}
