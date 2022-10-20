{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_robot_steering";
    rev = "bed52e129235c088dbe4d0c2fe84bcc6c14fa590";
    hash = "sha256-aOsM7otuqeV2ZZ0O7snRo/R6f45qWwCj7m8iLyVsIWM=";
    name = "ros-visualization-rqt_robot_steering-bed52e129235c088dbe4d0c2fe84bcc6c14fa590";
  });
in
{
  rqt_robot_steering = pkg "sha256-aOsM7otuqeV2ZZ0O7snRo/R6f45qWwCj7m8iLyVsIWM=" ".";
}
