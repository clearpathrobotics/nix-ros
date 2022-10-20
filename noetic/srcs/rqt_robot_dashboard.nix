{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_robot_dashboard";
    rev = "3d890a9482e32430a337791c9c071a46f8708fce";
    hash = "sha256-w/r1STzWFn37+6s20cr6waoCtnyNnqlC527DWhvXTvk=";
    name = "ros-visualization-rqt_robot_dashboard-3d890a9482e32430a337791c9c071a46f8708fce";
  });
in
{
  rqt_robot_dashboard = pkg "sha256-w/r1STzWFn37+6s20cr6waoCtnyNnqlC527DWhvXTvk=" ".";
}
