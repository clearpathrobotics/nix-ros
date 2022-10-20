{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "warehouse_ros_sqlite";
    rev = "76884af9f9f8ac039644d354e7e77f6ff476946e";
    hash = "sha256-V24njsASuSzpNe/Y9tPFVl3GdbOnAD4aqEnlrI0JpAo=";
    name = "ros-planning-warehouse_ros_sqlite-76884af9f9f8ac039644d354e7e77f6ff476946e";
  });
in
{
  warehouse_ros_sqlite = pkg "sha256-V24njsASuSzpNe/Y9tPFVl3GdbOnAD4aqEnlrI0JpAo=" ".";
}
