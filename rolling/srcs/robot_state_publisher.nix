{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "robot_state_publisher";
    rev = "ba1446fdeec55d4df65c738f9d2fa704e1500913";
    hash = "sha256-kJHKGw+yVKL31lJU7yJIHIEM+iGCcZNVL9Qcoa1Dt9g=";
    name = "ros-robot_state_publisher-ba1446fdeec55d4df65c738f9d2fa704e1500913";
  });
in
{
  robot_state_publisher = pkg "sha256-kJHKGw+yVKL31lJU7yJIHIEM+iGCcZNVL9Qcoa1Dt9g=" ".";
}
