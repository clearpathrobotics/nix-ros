{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-infrastructure";
    repo = "rosdoc_lite";
    rev = "5f3fc0f2ed508b46fa37bdf6da52851a22da44ca";
    hash = "sha256-PsSZvvNyUvWIsooQaNHefhUNHtiJek2C6sBG9ssQkI8=";
    name = "ros-infrastructure-rosdoc_lite-5f3fc0f2ed508b46fa37bdf6da52851a22da44ca";
  });
in
{
  rosdoc_lite = pkg "sha256-PsSZvvNyUvWIsooQaNHefhUNHtiJek2C6sBG9ssQkI8=" ".";
}
