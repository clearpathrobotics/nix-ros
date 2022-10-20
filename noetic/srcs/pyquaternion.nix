{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "Achllle";
    repo = "pyquaternion";
    rev = "68157b90404d5725b30ff5e1f454caf3e298d247";
    hash = "sha256-whMok3h3eaZF3v9B7eXyO2EosdvrnOP66GrbuprBKlE=";
    name = "Achllle-pyquaternion-68157b90404d5725b30ff5e1f454caf3e298d247";
  });
in
{
  pyquaternion = pkg "sha256-whMok3h3eaZF3v9B7eXyO2EosdvrnOP66GrbuprBKlE=" ".";
}
