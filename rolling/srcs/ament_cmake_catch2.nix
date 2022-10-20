{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "ament_cmake_catch2";
    rev = "55f08ed4ccd655f55337b5ec2ef37070fe332888";
    hash = "sha256-6tzL+dULkV+ICUdRuhZir4t5zMfKGYM90XRADib3YDM=";
    name = "open-rmf-ament_cmake_catch2-55f08ed4ccd655f55337b5ec2ef37070fe332888";
  });
in
{
  ament_cmake_catch2 = pkg "sha256-tO+yhq78V4z0Tiq3cso46p8Nv2iIiy1GtgvMFrerMPI=" "ament_cmake_catch2";
}
