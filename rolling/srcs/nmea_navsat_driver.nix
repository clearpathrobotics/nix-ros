{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "nmea_navsat_driver";
    rev = "a465b2403e6a490bf92317fa5d998a16df265b19";
    hash = "sha256-e5Rm136/8CVdALV4UJuRVHF/y9xOZpWF3pKcoufo0Ac=";
    name = "ros-drivers-nmea_navsat_driver-a465b2403e6a490bf92317fa5d998a16df265b19";
  });
in
{
  nmea_navsat_driver = pkg "sha256-e5Rm136/8CVdALV4UJuRVHF/y9xOZpWF3pKcoufo0Ac=" ".";
}
