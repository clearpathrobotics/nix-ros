{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_plot";
    rev = "d59601921a1daa6e06b8ea50391ac5eaad3fbf6a";
    hash = "sha256-xIn09V9PwNShI6KR00H6ZDx7hdH+sXys0gzs1Y4WSnc=";
    name = "ros-visualization-rqt_plot-d59601921a1daa6e06b8ea50391ac5eaad3fbf6a";
  });
in
{
  rqt_plot = pkg "sha256-xIn09V9PwNShI6KR00H6ZDx7hdH+sXys0gzs1Y4WSnc=" ".";
}
