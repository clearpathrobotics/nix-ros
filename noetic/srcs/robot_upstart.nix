{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "clearpathrobotics";
    repo = "robot_upstart";
    rev = "987376f5c49864e9e250e5bb5b88ae13e0ed6973";
    hash = "sha256-c9uMa7nsE4oH94PLVAxzsCUVf+WZC+sHqiTEBgxR6D4=";
    name = "clearpathrobotics-robot_upstart-987376f5c49864e9e250e5bb5b88ae13e0ed6973";
  });
in
{
  robot_upstart = pkg "sha256-c9uMa7nsE4oH94PLVAxzsCUVf+WZC+sHqiTEBgxR6D4=" ".";
}
