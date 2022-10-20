{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UniversalRobots";
    repo = "Universal_Robots_ROS_passthrough_controllers";
    rev = "da5768d670aab290454e9a49087f37ae13735289";
    hash = "sha256-5homQP8hBAGpOPucuiUL7imbKHMHfOAQxC/OFYSw+r0=";
    name = "UniversalRobots-Universal_Robots_ROS_passthrough_controllers-da5768d670aab290454e9a49087f37ae13735289";
  });
in
{
  pass_through_controllers = pkg "sha256-5homQP8hBAGpOPucuiUL7imbKHMHfOAQxC/OFYSw+r0=" ".";
}
