{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "four_wheel_steering_msgs";
    rev = "1bcea815f85efbfadfac41518de5f741d2c258d4";
    hash = "sha256-9BKsHGG4qej33ZfxdeO17sUCE5eGfwMW/ieowaefT5A=";
    name = "ros-drivers-four_wheel_steering_msgs-1bcea815f85efbfadfac41518de5f741d2c258d4";
  });
in
{
  four_wheel_steering_msgs = pkg "sha256-9BKsHGG4qej33ZfxdeO17sUCE5eGfwMW/ieowaefT5A=" ".";
}
