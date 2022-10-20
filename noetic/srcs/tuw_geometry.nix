{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tuw-robotics";
    repo = "tuw_geometry";
    rev = "4694ede99893ee3afc5fda0bebf6846a5f3d012f";
    hash = "sha256-eEN6kaBLSNr14acmsNNtvmLLSesBy4fBk6NBFkgg2M8=";
    name = "tuw-robotics-tuw_geometry-4694ede99893ee3afc5fda0bebf6846a5f3d012f";
  });
in
{
  tuw_geometry = pkg "sha256-eEN6kaBLSNr14acmsNNtvmLLSesBy4fBk6NBFkgg2M8=" ".";
}
