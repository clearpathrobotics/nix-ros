{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "rosconsole_bridge";
    rev = "38b0830978c2a7e51fd51af1e6191e4a87f628b4";
    hash = "sha256-hZrshrUfqmm20OzJvZDi3p+m+MNtQ85lGpsVthiOhX4=";
    name = "ros-rosconsole_bridge-38b0830978c2a7e51fd51af1e6191e4a87f628b4";
  });
in
{
  rosconsole_bridge = pkg "sha256-hZrshrUfqmm20OzJvZDi3p+m+MNtQ85lGpsVthiOhX4=" ".";
}
