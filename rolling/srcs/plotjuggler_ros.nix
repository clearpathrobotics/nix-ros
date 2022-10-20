{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PlotJuggler";
    repo = "plotjuggler-ros-plugins";
    rev = "eda2521f12a5cb55a168d88f3be15e0ccb0aa2c4";
    hash = "sha256-p2r+ZDeQtY5w8XRvC/0+mCwBpAXcm0lx5/5oEZPTR6c=";
    name = "PlotJuggler-plotjuggler-ros-plugins-eda2521f12a5cb55a168d88f3be15e0ccb0aa2c4";
  });
in
{
  plotjuggler_ros = pkg "sha256-p2r+ZDeQtY5w8XRvC/0+mCwBpAXcm0lx5/5oEZPTR6c=" ".";
}
