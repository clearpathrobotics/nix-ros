{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "launch_param_builder";
    rev = "43a4636b4e5444bc03058802cab5b2f3ad73bfe0";
    hash = "sha256-/0NmzQOkv9SKFwNl4shCNDPPLxU+75Mz3CVJPqGfdHU=";
    name = "PickNikRobotics-launch_param_builder-43a4636b4e5444bc03058802cab5b2f3ad73bfe0";
  });
in
{
  launch_param_builder = pkg "sha256-/0NmzQOkv9SKFwNl4shCNDPPLxU+75Mz3CVJPqGfdHU=" ".";
}
