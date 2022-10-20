{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "DLu";
    repo = "tf_transformations";
    rev = "1bfcda9a13312ebadb4d37d4589ae58406410e7f";
    hash = "sha256-Th7TH0n81yWFSEzszZbLTApfy+tC66atlYNS6pgHscU=";
    name = "DLu-tf_transformations-1bfcda9a13312ebadb4d37d4589ae58406410e7f";
  });
in
{
  tf_transformations = pkg "sha256-Th7TH0n81yWFSEzszZbLTApfy+tC66atlYNS6pgHscU=" ".";
}
