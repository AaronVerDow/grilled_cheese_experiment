{
  description = "R and LaTex";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };
  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      defaultPackage.x86_64-linux = pkgs.rstudioWrapper.override {
        packages = with pkgs; [
          R
          rPackages.tidyverse
          rPackages.magick
          rPackages.tesseract
          rPackages.dplyr
          rPackages.pander
          rPackages.purrr
          rPackages.tidyverse
          rPackages.svglite
          rPackages.yaml
          rPackages.df2yaml
          pandoc
          texliveFull
        ];
      };
    };
}
