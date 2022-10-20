{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-teleop";
    repo = "teleop_twist_keyboard";
    rev = "77b2973293bc4b92dcdd67b765071b43cab0f96f";
    hash = "sha256-58eHOEq2ylY138SEK5KEv+0fDHQaTH5kI3CzPUz+BUA=";
    name = "ros-teleop-teleop_twist_keyboard-77b2973293bc4b92dcdd67b765071b43cab0f96f";
  });
in
{
  teleop_twist_keyboard = pkg "sha256-58eHOEq2ylY138SEK5KEv+0fDHQaTH5kI3CzPUz+BUA=" ".";
}
