{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_moveit";
    rev = "61947c90dfe557e626dd8af0f69351d4d9ed32f6";
    hash = "sha256-oAMIJNczrf357/+8zYgLFDOp1zAMfhzweeWdo+Gjakc=";
    name = "ros-visualization-rqt_moveit-61947c90dfe557e626dd8af0f69351d4d9ed32f6";
  });
in
{
  rqt_moveit = pkg "sha256-oAMIJNczrf357/+8zYgLFDOp1zAMfhzweeWdo+Gjakc=" ".";
}
