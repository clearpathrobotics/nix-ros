{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_graph";
    rev = "60e4fa87e8490e71e3dc4a953b2c28914867aaec";
    hash = "sha256-C+gZ5fiagEVYMpMHKsXyGQ9Y6S1SbTAXJMpD8dXf8g0=";
    name = "ros-visualization-rqt_graph-60e4fa87e8490e71e3dc4a953b2c28914867aaec";
  });
in
{
  rqt_graph = pkg "sha256-C+gZ5fiagEVYMpMHKsXyGQ9Y6S1SbTAXJMpD8dXf8g0=" ".";
}
