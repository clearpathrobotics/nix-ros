{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "ros2_socketcan";
    rev = "8356e0477a9c93488186f4c16adb9c6143325245";
    hash = "sha256-/bYDPJzDEnhN8feKWH8U/AnS/mk2w8+8FLe2VIgG+jo=";
    name = "autowarefoundation-ros2_socketcan-8356e0477a9c93488186f4c16adb9c6143325245";
  });
in
{
  ros2_socketcan = pkg "sha256-+mD9xXsH2WyW9ucB0jc2w9lEPzLJCw9Wkroq/IIXxXo=" "ros2_socketcan";
}
