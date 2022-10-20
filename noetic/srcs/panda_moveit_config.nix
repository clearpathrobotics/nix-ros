{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "panda_moveit_config";
    rev = "b5ce35571832b4165f67f5db51c69581354d2cee";
    hash = "sha256-4hyW9Hy5RMWPDHdH73U2rbRt/2HibbehxSgBQmJT+bQ=";
    name = "ros-planning-panda_moveit_config-b5ce35571832b4165f67f5db51c69581354d2cee";
  });
in
{
  panda_moveit_config = pkg "sha256-4hyW9Hy5RMWPDHdH73U2rbRt/2HibbehxSgBQmJT+bQ=" ".";
}
