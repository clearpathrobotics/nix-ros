{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PilzDE";
    repo = "pilz_industrial_motion";
    rev = "27398536c21e50aeca821de1b6992f7a204d1d75";
    hash = "sha256-tSwZYROOr8bMDqFmgW6Uk3yRNLCijGF5yNLJ4HbLA1U=";
    name = "PilzDE-pilz_industrial_motion-27398536c21e50aeca821de1b6992f7a204d1d75";
  });
in
{
  pilz_industrial_motion = pkg "sha256-fND3spViRD/g5y9oCOLVuA33Xo7pyRXTd3EjPxlDvDI=" "pilz_industrial_motion";
  pilz_robot_programming = pkg "sha256-uSkg17fx9CO+n3gtStGL8WX5Ao30/X1rbkiB4G2Q/cU=" "pilz_robot_programming";
}
