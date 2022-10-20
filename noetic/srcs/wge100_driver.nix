{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "wge100_driver";
    rev = "7761245d7b0955df64dbf6b1fbea247c42f58453";
    hash = "sha256-qMc4v5s6pYWacHpvUd/78bnfr3Dxhzo2QV2r4EwoUzE=";
    name = "ros-drivers-wge100_driver-7761245d7b0955df64dbf6b1fbea247c42f58453";
  });
in
{
  wge100_camera = pkg "sha256-x6F+lyigUl13PI82qkXW0LyUe9YB5zeJujpOU+wvEIc=" "wge100_camera";
  wge100_camera_firmware = pkg "sha256-1SrOXU2SXa8PZ08hr3lBf7PVv6MMnx0PaplkZXpgaaI=" "wge100_camera_firmware";
  wge100_driver = pkg "sha256-5jCJ35Sa4EqUG7sjS99rsr7MoRwXYB6rFXDpzGefuYk=" "wge100_driver";
}
