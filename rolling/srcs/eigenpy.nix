{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "eigenpy";
    rev = "6066a36cdf8e42cd4059a09ef06b327aef1acbbc";
    hash = "sha256-eAW+TVUaFLvPVGnZJrppUIwhVkosUPSn8hyksMXUDsU=";
    name = "stack-of-tasks-eigenpy-6066a36cdf8e42cd4059a09ef06b327aef1acbbc";
  });
in
{
  eigenpy = pkg "sha256-eAW+TVUaFLvPVGnZJrppUIwhVkosUPSn8hyksMXUDsU=" ".";
}
