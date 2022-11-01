{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "rgbd_launch";
    rev = "751bb3cb71a13c123f7648c33c56ce2eb1480a7c";
    hash = "sha256-XgaFR0dYkQScIjeLX/jX7AfZLfg5PUxhdT0HEn+qGd0=";
    name = "ros-drivers-rgbd_launch-751bb3cb71a13c123f7648c33c56ce2eb1480a7c";
  });
in
{
  rgbd_launch = pkg "sha256-XgaFR0dYkQScIjeLX/jX7AfZLfg5PUxhdT0HEn+qGd0=" ".";
}
