{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "robot_state_publisher";
    rev = "bd2a7c6528b4850e3d1cfd4ec55f5798e87d6388";
    hash = "sha256-g0fRKSM9DOQ6szXdMpDoLQNiHpVlyoOWKUJRGWYfACo=";
    name = "ros-robot_state_publisher-bd2a7c6528b4850e3d1cfd4ec55f5798e87d6388";
  });
in
{
  robot_state_publisher = pkg "sha256-g0fRKSM9DOQ6szXdMpDoLQNiHpVlyoOWKUJRGWYfACo=" ".";
}
