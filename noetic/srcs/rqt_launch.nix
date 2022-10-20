{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_launch";
    rev = "c3275c50ef51b5a8b90112b42d4be42c1a64daee";
    hash = "sha256-+WFgDzSuSOnb8abQlE5XEJD7Gi/hDqThFqrUd66GMvE=";
    name = "ros-visualization-rqt_launch-c3275c50ef51b5a8b90112b42d4be42c1a64daee";
  });
in
{
  rqt_launch = pkg "sha256-+WFgDzSuSOnb8abQlE5XEJD7Gi/hDqThFqrUd66GMvE=" ".";
}
