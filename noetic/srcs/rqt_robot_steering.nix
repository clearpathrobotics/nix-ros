{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_robot_steering";
    rev = "1fe18c677e6b2f09915c0054f773da2e2c8e509d";
    hash = "sha256-TzKuPEyquh4ZiOIJcCCVYndMkLUsIYmVS7vcesLzYcc=";
    name = "ros-visualization-rqt_robot_steering-1fe18c677e6b2f09915c0054f773da2e2c8e509d";
  });
in
{
  rqt_robot_steering = pkg "sha256-TzKuPEyquh4ZiOIJcCCVYndMkLUsIYmVS7vcesLzYcc=" ".";
}
