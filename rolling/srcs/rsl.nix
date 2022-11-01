{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "RSL";
    rev = "8992001cf3fd96882a83c9d4f7588e148807f7ca";
    hash = "sha256-zl10k+Qg0gqIDfj5GEqFv6h6/+4Ju03vk3SXvyy+QKk=";
    name = "PickNikRobotics-RSL-8992001cf3fd96882a83c9d4f7588e148807f7ca";
  });
in
{
  rsl = pkg "sha256-zl10k+Qg0gqIDfj5GEqFv6h6/+4Ju03vk3SXvyy+QKk=" ".";
}
