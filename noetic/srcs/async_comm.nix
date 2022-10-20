{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "dpkoch";
    repo = "async_comm";
    rev = "be1175894ad8a01406fde4bad47be4f9e4297415";
    hash = "sha256-Ll1gQicbV4+k4wmgX68T+AyKszrztF3NAcjbv1FMDYI=";
    name = "dpkoch-async_comm-be1175894ad8a01406fde4bad47be4f9e4297415";
  });
in
{
  async_comm = pkg "sha256-Ll1gQicbV4+k4wmgX68T+AyKszrztF3NAcjbv1FMDYI=" ".";
}
