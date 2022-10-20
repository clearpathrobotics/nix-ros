{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "locusrobotics";
    repo = "tf2_2d";
    rev = "beb6a7a29fcdba7abb1540d9524e81cb9795b9ac";
    hash = "sha256-zX2NMo/L56DMENGrze4VQCI6pWCR3Yi3mWTAR0Xq3fE=";
    name = "locusrobotics-tf2_2d-beb6a7a29fcdba7abb1540d9524e81cb9795b9ac";
  });
in
{
  tf2_2d = pkg "sha256-zX2NMo/L56DMENGrze4VQCI6pWCR3Yi3mWTAR0Xq3fE=" ".";
}
