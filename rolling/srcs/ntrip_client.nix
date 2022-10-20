{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "LORD-MicroStrain";
    repo = "ntrip_client";
    rev = "c13dde5831ba5be07590f050332f3b0cf865b96d";
    hash = "sha256-mMiyxowaJCNRF/gd5xCjtJERiDWniuWJ+9gTjzNXW5k=";
    name = "LORD-MicroStrain-ntrip_client-c13dde5831ba5be07590f050332f3b0cf865b96d";
  });
in
{
  ntrip_client = pkg "sha256-mMiyxowaJCNRF/gd5xCjtJERiDWniuWJ+9gTjzNXW5k=" ".";
}
