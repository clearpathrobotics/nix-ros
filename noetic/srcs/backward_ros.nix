{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pal-robotics";
    repo = "backward_ros";
    rev = "0eaa66390226a3643ffafc0854098a9d37dbb0f8";
    hash = "sha256-mr5yxMJdC1IGua+rK42mCB237XaeGjLA/HoX4BvHrHY=";
    name = "pal-robotics-backward_ros-0eaa66390226a3643ffafc0854098a9d37dbb0f8";
  });
in
{
  backward_ros = pkg "sha256-mr5yxMJdC1IGua+rK42mCB237XaeGjLA/HoX4BvHrHY=" ".";
}
