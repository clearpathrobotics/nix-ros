{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-geographic-info";
    repo = "open_street_map";
    rev = "a444e721d0f1894e3539a788c02c2174680a4bba";
    hash = "sha256-VIdMTB+ywhM4/ow+cyQpAYF3tDH7cb4jf1vMm3OAr50=";
    name = "ros-geographic-info-open_street_map-a444e721d0f1894e3539a788c02c2174680a4bba";
  });
in
{
  osm_cartography = pkg "sha256-cp09N35zdR67LcOE5gxSEOXHx0zdOsyjednma+XlOU4=" "osm_cartography";
  route_network = pkg "sha256-HeijMO+7LbCay0ZZQvkPOGbFJK+SYm38t1iOYuAPVDg=" "route_network";
  test_osm = pkg "sha256-tgi4cHz/S4UVYfolOfFWtE0BRrOLfjyPBWZVeYnha6s=" "test_osm";
}
