{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "crigroup";
    repo = "criutils";
    rev = "8a92cf6517fb239b271883718ab761306ffe77be";
    hash = "sha256-6DDlacpDFEhaTkVFonNL54bN+jIVxpoSRJ/hkp+FkkA=";
    name = "crigroup-criutils-8a92cf6517fb239b271883718ab761306ffe77be";
  });
in
{
  criutils = pkg "sha256-6DDlacpDFEhaTkVFonNL54bN+jIVxpoSRJ/hkp+FkkA=" ".";
}
