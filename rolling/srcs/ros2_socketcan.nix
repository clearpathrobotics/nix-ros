{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "ros2_socketcan";
    rev = "76873dbc7fb2768c4cbbbc7d8143c0e51c1d7264";
    hash = "sha256-vZ5+xAQo07EgCIaICbZa32GyR5ym+ddE39tHeKrijkI=";
    name = "autowarefoundation-ros2_socketcan-76873dbc7fb2768c4cbbbc7d8143c0e51c1d7264";
  });
in
{
  ros2_socketcan = pkg "sha256-kyvmhlVy0mIhwz7Tbv+5SUjj+PMv22WoA9c8M7dYlDs=" "ros2_socketcan";
}
