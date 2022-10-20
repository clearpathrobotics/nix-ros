{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "septentrio-gnss";
    repo = "septentrio_gnss_driver";
    rev = "0a26161b5902df97d28d63c34a219808f4075140";
    hash = "sha256-ff1Ngg7aDw562gZvcxceJhl4e62gdYiAOilKzNmB47U=";
    name = "septentrio-gnss-septentrio_gnss_driver-0a26161b5902df97d28d63c34a219808f4075140";
  });
in
{
  septentrio_gnss_driver = pkg "sha256-ff1Ngg7aDw562gZvcxceJhl4e62gdYiAOilKzNmB47U=" ".";
}
