{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "turtlebot3_msgs";
    rev = "bb2caa071c6e4c6ba6efec4722a05f926dce7622";
    hash = "sha256-B0+r+BT2z9toYrBTvrpIbUsY/FQ3J36RiOwRQ2tSDy0=";
    name = "ROBOTIS-GIT-turtlebot3_msgs-bb2caa071c6e4c6ba6efec4722a05f926dce7622";
  });
in
{
  turtlebot3_msgs = pkg "sha256-B0+r+BT2z9toYrBTvrpIbUsY/FQ3J36RiOwRQ2tSDy0=" ".";
}
