{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "snowbot_operating_system";
    rev = "272ba3204bb49d32a39368f08aff947ab7ece976";
    hash = "sha256-jsc6W+E4XVtTLGd+ZSn45ChfZmV6/c9nUg1FpqA6d8s=";
    name = "PickNikRobotics-snowbot_operating_system-272ba3204bb49d32a39368f08aff947ab7ece976";
  });
in
{
  snowbot_operating_system = pkg "sha256-jsc6W+E4XVtTLGd+ZSn45ChfZmV6/c9nUg1FpqA6d8s=" ".";
}
