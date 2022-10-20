{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-teleop";
    repo = "teleop_twist_joy";
    rev = "4f61e6d853138b153aeda0984d2abeb7a04d87bb";
    hash = "sha256-BD2dg47LYApjkCsBaxOvKTjbgK0yQARKeGKszFY5DDE=";
    name = "ros-teleop-teleop_twist_joy-4f61e6d853138b153aeda0984d2abeb7a04d87bb";
  });
in
{
  teleop_twist_joy = pkg "sha256-BD2dg47LYApjkCsBaxOvKTjbgK0yQARKeGKszFY5DDE=" ".";
}
