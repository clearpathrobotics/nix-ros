{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "nmea_comms";
    rev = "0117831705631c692345beabab6d771c4cb855df";
    hash = "sha256-js5TVn97rr5Jtra46I10yDBKYkHNoj6enk6uFtVTaxc=";
    name = "ros-drivers-nmea_comms-0117831705631c692345beabab6d771c4cb855df";
  });
in
{
  nmea_comms = pkg "sha256-js5TVn97rr5Jtra46I10yDBKYkHNoj6enk6uFtVTaxc=" ".";
}
