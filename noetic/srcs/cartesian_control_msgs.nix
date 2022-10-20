{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UniversalRobots";
    repo = "Universal_Robots_ROS_cartesian_control_msgs";
    rev = "efd9900092aaa2ce030790138ee870a8b5d6a85a";
    hash = "sha256-SI1ihNzF5UnaEncA/RmYTUwLHnk36crRLynTl2jdmJ8=";
    name = "UniversalRobots-Universal_Robots_ROS_cartesian_control_msgs-efd9900092aaa2ce030790138ee870a8b5d6a85a";
  });
in
{
  cartesian_control_msgs = pkg "sha256-SI1ihNzF5UnaEncA/RmYTUwLHnk36crRLynTl2jdmJ8=" ".";
}
