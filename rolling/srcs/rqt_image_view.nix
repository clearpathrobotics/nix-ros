{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_image_view";
    rev = "836bc0ad4d9bdc365a80fb0af43eaed67648324a";
    hash = "sha256-X3GHcEegbG/Z45tA1fhYO3xlE1Fr0WKRaNpZRXYhF2Y=";
    name = "ros-visualization-rqt_image_view-836bc0ad4d9bdc365a80fb0af43eaed67648324a";
  });
in
{
  rqt_image_view = pkg "sha256-X3GHcEegbG/Z45tA1fhYO3xlE1Fr0WKRaNpZRXYhF2Y=" ".";
}
