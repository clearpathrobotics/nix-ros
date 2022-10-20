{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rviz";
    rev = "6a234b4404c5ee71051f0b338ab8d5d2d931c27b";
    hash = "sha256-rKFHfbNey2V6pOMclKuMmRGWFFKnqpEW1D/65FA67BE=";
    name = "ros-visualization-rviz-6a234b4404c5ee71051f0b338ab8d5d2d931c27b";
  });
in
{
  rviz = pkg "sha256-rKFHfbNey2V6pOMclKuMmRGWFFKnqpEW1D/65FA67BE=" ".";
}
