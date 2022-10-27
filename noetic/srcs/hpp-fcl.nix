{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "humanoid-path-planner";
    repo = "hpp-fcl";
    rev = "54fae6dc4bee50d38e976e8a28d5f39869997f3a";
    hash = "sha256-+XZ/IZAP3aYZtaJ10vcnBTJkPY1N82L7naGS+Yq++ZU=";
    name = "humanoid-path-planner-hpp-fcl-54fae6dc4bee50d38e976e8a28d5f39869997f3a";
  });
in
{
  hpp-fcl = pkg "sha256-+XZ/IZAP3aYZtaJ10vcnBTJkPY1N82L7naGS+Yq++ZU=" ".";
}
