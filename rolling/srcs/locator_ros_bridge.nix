{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "boschglobal";
    repo = "locator_ros_bridge";
    rev = "4b4bdd55ce932ed12fa6b7bb66714aad4a416f55";
    hash = "sha256-NYFBQSmQMe7WusoUhyrXMCsIGjVJxrIeG4X/kWfRyBE=";
    name = "boschglobal-locator_ros_bridge-4b4bdd55ce932ed12fa6b7bb66714aad4a416f55";
  });
in
{
  bosch_locator_bridge = pkg "sha256-iCvTmxpatTX1lm0hlHZ/i6NSTUDAc68PilPZYxWYGZc=" "bosch_locator_bridge";
  bosch_locator_bridge_utils = pkg "sha256-wjGhkXeXLAQCV70ypNehdkmOnHMEPp+ReYxvbCP+VF4=" "bosch_locator_bridge_utils";
}
