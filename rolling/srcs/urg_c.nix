{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "urg_c";
    rev = "53136ab9cf6760317bb322b3b3a6a4a5a661ac94";
    hash = "sha256-TGQVgarXZ/8Pf/OQp8WAu8X7qzL8PHALEj+PbR+B3Go=";
    name = "ros-drivers-urg_c-53136ab9cf6760317bb322b3b3a6a4a5a661ac94";
  });
in
{
  urg_c = pkg "sha256-TGQVgarXZ/8Pf/OQp8WAu8X7qzL8PHALEj+PbR+B3Go=" ".";
}
