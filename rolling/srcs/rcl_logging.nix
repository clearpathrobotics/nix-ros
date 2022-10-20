{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rcl_logging";
    rev = "92cba58951c5fec3ced71b11bcf440b89a1c3aad";
    hash = "sha256-52JJ8fcASkAPRcBMZw9am8DJVnjgcEmqLsGiPVAPxV4=";
    name = "ros2-rcl_logging-92cba58951c5fec3ced71b11bcf440b89a1c3aad";
  });
in
{
  rcl_logging_interface = pkg "sha256-NrWIIDPsfGP+7cgKwYsNNntqOWYs2EvVy/z/8szZYTM=" "rcl_logging_interface";
  rcl_logging_noop = pkg "sha256-9aZ3BeyEePp1qUKGyNk8bXrbrKYUNP/9x8Bkl6voj2U=" "rcl_logging_noop";
  rcl_logging_spdlog = pkg "sha256-qll7NDeg7Ek5SzsfsyUQV0BXtQReh3xSHGhMoB4QNc0=" "rcl_logging_spdlog";
}
