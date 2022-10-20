{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "control_toolbox";
    rev = "29190b4acab8c62c9e1787310674aa739f6ff93c";
    hash = "sha256-ZFLx9OisOapFChLe2OKps3X8LE4DGh97CyuTqtoUdx0=";
    name = "ros-controls-control_toolbox-29190b4acab8c62c9e1787310674aa739f6ff93c";
  });
in
{
  control_toolbox = pkg "sha256-ZFLx9OisOapFChLe2OKps3X8LE4DGh97CyuTqtoUdx0=" ".";
}
