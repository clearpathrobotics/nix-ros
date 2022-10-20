{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "cyberbotics";
    repo = "webots_ros";
    rev = "259608936bfff0dd660d1d3a7f4f152dc12c128e";
    hash = "sha256-dIxiDoDvDJFR/GaNTmwrfO0PhohBI2o7Q1bGxvteuaI=";
    name = "cyberbotics-webots_ros-259608936bfff0dd660d1d3a7f4f152dc12c128e";
  });
in
{
  webots_ros = pkg "sha256-dIxiDoDvDJFR/GaNTmwrfO0PhohBI2o7Q1bGxvteuaI=" ".";
}
