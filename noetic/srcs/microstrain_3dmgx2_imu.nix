{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "microstrain_3dmgx2_imu";
    rev = "c126ef682c3c73bc7ff9fadf57af60eaf6f2d4f0";
    hash = "sha256-7MKmlZuU6NLA+ZUDKedUhkyc8Xek4d9LKGqDHO2PNno=";
    name = "ros-drivers-microstrain_3dmgx2_imu-c126ef682c3c73bc7ff9fadf57af60eaf6f2d4f0";
  });
in
{
  microstrain_3dmgx2_imu = pkg "sha256-7MKmlZuU6NLA+ZUDKedUhkyc8Xek4d9LKGqDHO2PNno=" ".";
}
