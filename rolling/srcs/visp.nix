{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "lagadic";
    repo = "visp";
    rev = "b30e03a5920b06badf8cd61131a9937c24300fc1";
    hash = "sha256-vF007fA/OpkxKRsobAgj5DOQImrenmk+XT51A9T0FmY=";
    name = "lagadic-visp-b30e03a5920b06badf8cd61131a9937c24300fc1";
  });
in
{
  VISP = pkg "sha256-vF007fA/OpkxKRsobAgj5DOQImrenmk+XT51A9T0FmY=" ".";
}
