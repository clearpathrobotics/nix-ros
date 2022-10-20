{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ijnek";
    repo = "nao_button_sim";
    rev = "b377192b9f5d7bcafbd38228bd5d5e77fe0d797d";
    hash = "sha256-Rw2mR/+MuortBew2FRiWcWBx1Co2d5EQZilKORVHUaU=";
    name = "ijnek-nao_button_sim-b377192b9f5d7bcafbd38228bd5d5e77fe0d797d";
  });
in
{
  nao_button_sim = pkg "sha256-Rw2mR/+MuortBew2FRiWcWBx1Co2d5EQZilKORVHUaU=" ".";
}
