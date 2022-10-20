{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "navigation_msgs";
    rev = "95f1e5a949a45c5afafe817d1d50524cc518ed28";
    hash = "sha256-9r4/zIO3ye0k8Kn04jYyVKeKVoxP5leTjeL0JS05K84=";
    name = "ros-planning-navigation_msgs-95f1e5a949a45c5afafe817d1d50524cc518ed28";
  });
in
{
  map_msgs = pkg "sha256-cSeyqhHbFCEKh+19DvBtK0jHQGhHk3P6eAgwkY7+Bls=" "map_msgs";
}
