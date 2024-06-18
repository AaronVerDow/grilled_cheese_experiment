{ pkgs ? import <nixpkgs> {}
}:

pkgs.rstudioWrapper.override {
  packages = with pkgs.rPackages; [ magick tesseract dplyr pander purrr tidyverse svglite yaml df2yaml ];
}
