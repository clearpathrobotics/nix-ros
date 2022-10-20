{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "neobotix";
    repo = "neo_simulation2";
    rev = "main";
    hash = "sha256-Uk3wYutAC0c6GKoggqY1TTs2PDkwNCBComp2TIBhl90=";
    name = "neobotix-neo_simulation2-main";
  });
in
{
  neo_simulation2 = pkg "sha256-Uk3wYutAC0c6GKoggqY1TTs2PDkwNCBComp2TIBhl90=" ".";
}
