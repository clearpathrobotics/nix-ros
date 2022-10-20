{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "ros_control_boilerplate";
    rev = "0f9cd01bc1430c718554a3801683ada9cd2aa0a6";
    hash = "sha256-OCJ8lSf2GkyK6E+QcGROIuqw5pYNbHENK47PvLJbuXQ=";
    name = "PickNikRobotics-ros_control_boilerplate-0f9cd01bc1430c718554a3801683ada9cd2aa0a6";
  });
in
{
  ros_control_boilerplate = pkg "sha256-OCJ8lSf2GkyK6E+QcGROIuqw5pYNbHENK47PvLJbuXQ=" ".";
}
