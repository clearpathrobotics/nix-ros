{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stonier";
    repo = "sophus";
    rev = "eb64fb3c7e00764155412129cc825ee6ac311892";
    hash = "sha256-YbqlsS0S+5pW34hDFGB4bswWkt+t0gAaRdUud+c/Pyk=";
    name = "stonier-sophus-eb64fb3c7e00764155412129cc825ee6ac311892";
  });
in
{
  sophus = pkg "sha256-YbqlsS0S+5pW34hDFGB4bswWkt+t0gAaRdUud+c/Pyk=" ".";
}
