{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "nmea_navsat_driver";
    rev = "265d9026aabf05e6bfc9bda8346d357c2d51e84c";
    hash = "sha256-gTVct0AiCqvewfbkRgu4kY8+5fYcgFO+tcRFZjGms9k=";
    name = "ros-drivers-nmea_navsat_driver-265d9026aabf05e6bfc9bda8346d357c2d51e84c";
  });
in
{
  nmea_navsat_driver = pkg "sha256-gTVct0AiCqvewfbkRgu4kY8+5fYcgFO+tcRFZjGms9k=" ".";
}
