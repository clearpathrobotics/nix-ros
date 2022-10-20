{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "laser_filters";
    rev = "8491426ae5f9aa9d61ec5e17fdb86dc2bcf70fdf";
    hash = "sha256-YFtbNawiMNVrsRMgFWtIygImnqizjgOgsrMSmczYp7M=";
    name = "ros-perception-laser_filters-8491426ae5f9aa9d61ec5e17fdb86dc2bcf70fdf";
  });
in
{
  laser_filters = pkg "sha256-YFtbNawiMNVrsRMgFWtIygImnqizjgOgsrMSmczYp7M=" ".";
}
