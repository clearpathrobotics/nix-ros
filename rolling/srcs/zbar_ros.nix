{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "zbar_ros";
    rev = "89e789e03c3bc66fa62a4d382168e237edfc9cf0";
    hash = "sha256-1xW1+9pNmsUWPiJAqBdDOTrg9C85tqFrLungqs9PZdg=";
    name = "ros-drivers-zbar_ros-89e789e03c3bc66fa62a4d382168e237edfc9cf0";
  });
in
{
  zbar_ros = pkg "sha256-1xW1+9pNmsUWPiJAqBdDOTrg9C85tqFrLungqs9PZdg=" ".";
}
