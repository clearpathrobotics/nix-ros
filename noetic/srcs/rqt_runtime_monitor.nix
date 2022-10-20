{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_runtime_monitor";
    rev = "d2c866bd9199e79e54a6eb375586e864aa53179b";
    hash = "sha256-Daju4S9ccFnIuq/1P+y+SuNBy2VMsj4BuGGS3IQEUSo=";
    name = "ros-visualization-rqt_runtime_monitor-d2c866bd9199e79e54a6eb375586e864aa53179b";
  });
in
{
  rqt_runtime_monitor = pkg "sha256-Daju4S9ccFnIuq/1P+y+SuNBy2VMsj4BuGGS3IQEUSo=" ".";
}
