{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rviz_animated_view_controller";
    rev = "c6c97b6334e86543a8f945751f6ac19f066602ee";
    hash = "sha256-QTN46GE4BLEDJPYhRbxyRK7EIclfCrGR5M0wX3n6KBI=";
    name = "ros-visualization-rviz_animated_view_controller-c6c97b6334e86543a8f945751f6ac19f066602ee";
  });
in
{
  rviz_animated_view_controller = pkg "sha256-QTN46GE4BLEDJPYhRbxyRK7EIclfCrGR5M0wX3n6KBI=" ".";
}
