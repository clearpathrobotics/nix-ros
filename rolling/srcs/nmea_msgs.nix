{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "nmea_msgs";
    rev = "285224368ea2af46c7254483e8388699e96395cb";
    hash = "sha256-MGZQ+8VnYqJz0u8Rd7wbicHFxiep2k2oM5v93+VrYVs=";
    name = "ros-drivers-nmea_msgs-285224368ea2af46c7254483e8388699e96395cb";
  });
in
{
  nmea_msgs = pkg "sha256-MGZQ+8VnYqJz0u8Rd7wbicHFxiep2k2oM5v93+VrYVs=" ".";
}
