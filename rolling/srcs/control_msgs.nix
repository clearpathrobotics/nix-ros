{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "control_msgs";
    rev = "338ef98b4a4d763fe5df39e86a1967844ceb506e";
    hash = "sha256-5MESPl3uUROv7XS1pjw3ouOHfgdogbj5Cq09zlh/05c=";
    name = "ros-controls-control_msgs-338ef98b4a4d763fe5df39e86a1967844ceb506e";
  });
in
{
  control_msgs = pkg "sha256-UkQmIxnq7viiYcgQSNtE7ZycVrgrp2zkzopzejfoJ3Q=" "control_msgs";
}
