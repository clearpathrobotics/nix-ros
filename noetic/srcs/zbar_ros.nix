{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "zbar_ros";
    rev = "83269acd3d918654ea8816ce93aeb14cda886ec2";
    hash = "sha256-baVUVjV8mvuxcUkL0EE29nPUiJPWPgIsmHDrJ/DRchc=";
    name = "ros-drivers-zbar_ros-83269acd3d918654ea8816ce93aeb14cda886ec2";
  });
in
{
  zbar_ros = pkg "sha256-baVUVjV8mvuxcUkL0EE29nPUiJPWPgIsmHDrJ/DRchc=" ".";
}
