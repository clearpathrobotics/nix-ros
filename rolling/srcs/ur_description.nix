{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UniversalRobots";
    repo = "Universal_Robots_ROS2_Description";
    rev = "c4d1724ac32a4f0e3bcfbcfa420f82608b07b17f";
    hash = "sha256-aopKf5farhCDbXcCTSl247hTjoTXMppvfQHxd/1jER4=";
    name = "UniversalRobots-Universal_Robots_ROS2_Description-c4d1724ac32a4f0e3bcfbcfa420f82608b07b17f";
  });
in
{
  ur_description = pkg "sha256-aopKf5farhCDbXcCTSl247hTjoTXMppvfQHxd/1jER4=" ".";
}
