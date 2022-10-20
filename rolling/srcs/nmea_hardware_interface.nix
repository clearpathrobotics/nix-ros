{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OUXT-Polaris";
    repo = "nmea_hardware_interface";
    rev = "af0149785be478244b5c21b6e4264ec9a3bafd2e";
    hash = "sha256-mh0tne5o/Rte9tlD74xA4oUkXYoKXahdwO8GRN8julc=";
    name = "OUXT-Polaris-nmea_hardware_interface-af0149785be478244b5c21b6e4264ec9a3bafd2e";
  });
in
{
  nmea_hardware_interface = pkg "sha256-mh0tne5o/Rte9tlD74xA4oUkXYoKXahdwO8GRN8julc=" ".";
}
