{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "laser_pipeline";
    rev = "eb2d1369f77d1bea94f7ddd651cefb9c135560a5";
    hash = "sha256-5jGS3u6tmVHJPqkvapJTjuA5o0CSoyRz78zqT0zNta0=";
    name = "ros-perception-laser_pipeline-eb2d1369f77d1bea94f7ddd651cefb9c135560a5";
  });
in
{
  laser_pipeline = pkg "sha256-5jGS3u6tmVHJPqkvapJTjuA5o0CSoyRz78zqT0zNta0=" ".";
}
