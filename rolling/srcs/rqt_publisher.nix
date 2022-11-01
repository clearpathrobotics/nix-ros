{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_publisher";
    rev = "7b4f06999b8f08dc7dae4b10f07c94d1127dedde";
    hash = "sha256-A862Vd75gDIQFxUFja7cszJqsZdKNj8fRyUtUXRhyxY=";
    name = "ros-visualization-rqt_publisher-7b4f06999b8f08dc7dae4b10f07c94d1127dedde";
  });
in
{
  rqt_publisher = pkg "sha256-A862Vd75gDIQFxUFja7cszJqsZdKNj8fRyUtUXRhyxY=" ".";
}
