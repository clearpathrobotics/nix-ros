{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_robot_monitor";
    rev = "c86e3b1ac63c787f71b3e80a341896368a27c8fe";
    hash = "sha256-2l4FscfoQO0GL2szic/GzocsjJfRZo36NwvRGF8bKZs=";
    name = "ros-visualization-rqt_robot_monitor-c86e3b1ac63c787f71b3e80a341896368a27c8fe";
  });
in
{
  rqt_robot_monitor = pkg "sha256-2l4FscfoQO0GL2szic/GzocsjJfRZo36NwvRGF8bKZs=" ".";
}
