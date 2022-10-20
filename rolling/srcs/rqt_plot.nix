{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_plot";
    rev = "00d91f012d16002217c159ee3ce53b03c9149479";
    hash = "sha256-PJU2kackdJeYUl2WYo1gPwH9Hy9+V1/OJwIPGqA58oo=";
    name = "ros-visualization-rqt_plot-00d91f012d16002217c159ee3ce53b03c9149479";
  });
in
{
  rqt_plot = pkg "sha256-PJU2kackdJeYUl2WYo1gPwH9Hy9+V1/OJwIPGqA58oo=" ".";
}
