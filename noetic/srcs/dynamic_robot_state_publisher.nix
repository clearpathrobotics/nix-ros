{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "peci1";
    repo = "dynamic_robot_state_publisher";
    rev = "7a71805cd3e5dd16b3ceff480fcf68e5f04ffb80";
    hash = "sha256-e9kAUlnSdbfrAbldk4WRC43rkbNEzWufElcJxVsg0NU=";
    name = "peci1-dynamic_robot_state_publisher-7a71805cd3e5dd16b3ceff480fcf68e5f04ffb80";
  });
in
{
  dynamic_robot_state_publisher = pkg "sha256-e9kAUlnSdbfrAbldk4WRC43rkbNEzWufElcJxVsg0NU=" ".";
}
