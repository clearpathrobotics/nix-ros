{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "laser_proc";
    rev = "3802560336ac7ff53b60dc7dadd00e6409fc0190";
    hash = "sha256-l1f0cy64NCRxPwM/6QM3e1Hg6X8wjiixb16t16zZgAI=";
    name = "ros-perception-laser_proc-3802560336ac7ff53b60dc7dadd00e6409fc0190";
  });
in
{
  laser_proc = pkg "sha256-l1f0cy64NCRxPwM/6QM3e1Hg6X8wjiixb16t16zZgAI=" ".";
}
