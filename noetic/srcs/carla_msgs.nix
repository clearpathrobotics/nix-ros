{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "carla-simulator";
    repo = "ros-carla-msgs";
    rev = "797105488451eff0f033d30fd98f806ce8803290";
    hash = "sha256-/2atAXuRFq4SkW1IA1GVuk2WMtdVELbogqLA4Ekgb5Y=";
    name = "carla-simulator-ros-carla-msgs-797105488451eff0f033d30fd98f806ce8803290";
  });
in
{
  carla_msgs = pkg "sha256-/2atAXuRFq4SkW1IA1GVuk2WMtdVELbogqLA4Ekgb5Y=" ".";
}
