{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "AutonicsLiDAR";
    repo = "lsc_ros_driver";
    rev = "f7bb67acd1767593f3e22cbed92713a6edfa4f51";
    hash = "sha256-8j41z7skBcXMdRHjYkSUR+58eoIR8Np5m3Cru2/MONA=";
    name = "AutonicsLiDAR-lsc_ros_driver-f7bb67acd1767593f3e22cbed92713a6edfa4f51";
  });
in
{
  lsc_ros_driver = pkg "sha256-8j41z7skBcXMdRHjYkSUR+58eoIR8Np5m3Cru2/MONA=" ".";
}
