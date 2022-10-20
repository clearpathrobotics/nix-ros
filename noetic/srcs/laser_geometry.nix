{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "laser_geometry";
    rev = "22f3aa941aa0c0d84914017855bb3414a18143e1";
    hash = "sha256-gvWxjW827fwzlXUOw5BIcEbf01P5ctACpXgHQYWjgmA=";
    name = "ros-perception-laser_geometry-22f3aa941aa0c0d84914017855bb3414a18143e1";
  });
in
{
  laser_geometry = pkg "sha256-gvWxjW827fwzlXUOw5BIcEbf01P5ctACpXgHQYWjgmA=" ".";
}
