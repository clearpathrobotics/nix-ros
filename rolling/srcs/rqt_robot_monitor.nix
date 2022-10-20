{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_robot_monitor";
    rev = "43b9126c1fb8af37a5ef49c636283bf40a23f614";
    hash = "sha256-JXyScrgLKYUKJyvvJAKY6vrSMwdjQQGRCzWXCD755XM=";
    name = "ros-visualization-rqt_robot_monitor-43b9126c1fb8af37a5ef49c636283bf40a23f614";
  });
in
{
  rqt_robot_monitor = pkg "sha256-JXyScrgLKYUKJyvvJAKY6vrSMwdjQQGRCzWXCD755XM=" ".";
}
