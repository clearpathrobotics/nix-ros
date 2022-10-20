{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "cra-ros-pkg";
    repo = "robot_localization";
    rev = "bf02bfbe5065071a143ffebf0cdc4fc3c677b1eb";
    hash = "sha256-y6O4HKqyPypB5uRSGzUI0TiT+keG/8OnjR/H4eldCM8=";
    name = "cra-ros-pkg-robot_localization-bf02bfbe5065071a143ffebf0cdc4fc3c677b1eb";
  });
in
{
  robot_localization = pkg "sha256-y6O4HKqyPypB5uRSGzUI0TiT+keG/8OnjR/H4eldCM8=" ".";
}
