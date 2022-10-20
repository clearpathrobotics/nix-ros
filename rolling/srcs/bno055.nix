{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "flynneva";
    repo = "bno055";
    rev = "cf7202cf5fbedc31162332ca840a9557781a6812";
    hash = "sha256-MtoiAeVOPuZ6SxqkfzeFRhVXTAQOAQEb6HBO71KauBI=";
    name = "flynneva-bno055-cf7202cf5fbedc31162332ca840a9557781a6812";
  });
in
{
  bno055 = pkg "sha256-MtoiAeVOPuZ6SxqkfzeFRhVXTAQOAQEb6HBO71KauBI=" ".";
}
