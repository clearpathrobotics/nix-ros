{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "ackermann_msgs";
    rev = "f61ddd8978bc1604b8beab958bb057ed344225d0";
    hash = "sha256-oivQGrZlBeFsabeRzSqFB+Q7dCm7wppHIGZgHX3DrfI=";
    name = "ros-drivers-ackermann_msgs-f61ddd8978bc1604b8beab958bb057ed344225d0";
  });
in
{
  ackermann_msgs = pkg "sha256-oivQGrZlBeFsabeRzSqFB+Q7dCm7wppHIGZgHX3DrfI=" ".";
}
