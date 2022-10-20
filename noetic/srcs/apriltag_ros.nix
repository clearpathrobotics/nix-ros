{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "AprilRobotics";
    repo = "apriltag_ros";
    rev = "0da016c9ebe5da2ddd2229da691235d52e777dcd";
    hash = "sha256-e4+N47gsHeOjCXutaWOktbuLQ9ACNuzIBMgjbPFcmko=";
    name = "AprilRobotics-apriltag_ros-0da016c9ebe5da2ddd2229da691235d52e777dcd";
  });
in
{
  apriltag_ros = pkg "sha256-46XVNJ+nyuPmolcGWjV40xg3/Dl6K3aGbvGMujy4IEY=" "apriltag_ros";
}
