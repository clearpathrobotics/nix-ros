{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_traffic";
    rev = "f376706af00552cad99d195a8aca7273e386c49e";
    hash = "sha256-bPar9k4r5zETdthimb2OFqU2m+joPedSUTlvwsc7zsQ=";
    name = "open-rmf-rmf_traffic-f376706af00552cad99d195a8aca7273e386c49e";
  });
in
{
  rmf_traffic = pkg "sha256-b/NpmRwXUCin5pyf3jzm2TIstB0ug2FfsOdJXF7zeE4=" "rmf_traffic";
  rmf_traffic_examples = pkg "sha256-bBRDoknCyTKV2epwCF7WNWrDCGPK9bJJuydn6S9n7nU=" "rmf_traffic_examples";
}
