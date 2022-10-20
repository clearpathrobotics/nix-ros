{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "pcl_msgs";
    rev = "ddcc8e14729f0b3b2dca21c4be463fe65fa72c65";
    hash = "sha256-yizofZG+hOjqubj3y8fxNf5YbEogCXVFhvreSQCD3ts=";
    name = "ros-perception-pcl_msgs-ddcc8e14729f0b3b2dca21c4be463fe65fa72c65";
  });
in
{
  pcl_msgs = pkg "sha256-yizofZG+hOjqubj3y8fxNf5YbEogCXVFhvreSQCD3ts=" ".";
}
