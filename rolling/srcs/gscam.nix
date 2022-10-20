{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "gscam";
    rev = "ced9d48419305364576b28e570d3317b3e026408";
    hash = "sha256-afyeFmAxz3wg73iXEUlFZQ2ajJTFUgaKyDHXTkqndH0=";
    name = "ros-drivers-gscam-ced9d48419305364576b28e570d3317b3e026408";
  });
in
{
  gscam = pkg "sha256-afyeFmAxz3wg73iXEUlFZQ2ajJTFUgaKyDHXTkqndH0=" ".";
}
