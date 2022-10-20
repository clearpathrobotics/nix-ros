{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "vrpn";
    repo = "vrpn";
    rev = "e2ebd90aa3bce620ef1f2936534efcaebb14178e";
    hash = "sha256-mXPPqe0hQ+/P44OrWSTeooqqdbPDRDN495rgrIAjuNM=";
    name = "vrpn-vrpn-e2ebd90aa3bce620ef1f2936534efcaebb14178e";
  });
in
{
  VRPN = pkg "sha256-mXPPqe0hQ+/P44OrWSTeooqqdbPDRDN495rgrIAjuNM=" ".";
}
