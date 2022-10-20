{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "laser_geometry";
    rev = "8deee5f936af33fa88ce3172a04702544419393c";
    hash = "sha256-wYz4g8U3LW9VeVcc+5IyoEABLHYaO8KjdfI69pD9V1M=";
    name = "ros-perception-laser_geometry-8deee5f936af33fa88ce3172a04702544419393c";
  });
in
{
  laser_geometry = pkg "sha256-wYz4g8U3LW9VeVcc+5IyoEABLHYaO8KjdfI69pD9V1M=" ".";
}
