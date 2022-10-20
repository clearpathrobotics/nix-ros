{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "nmea_msgs";
    rev = "041c0b940f65a3f6bdc5e8ca29d3c318ced7b95d";
    hash = "sha256-P8Ri1NXDSdPiJLiNyr1RP5/AsbeE8s74N7cZGx9qpRI=";
    name = "ros-drivers-nmea_msgs-041c0b940f65a3f6bdc5e8ca29d3c318ced7b95d";
  });
in
{
  nmea_msgs = pkg "sha256-P8Ri1NXDSdPiJLiNyr1RP5/AsbeE8s74N7cZGx9qpRI=" ".";
}
