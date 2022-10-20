{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "ros2_socketcan";
    rev = "8843077fbc33031b1de98df0aa97b2793d54b853";
    hash = "sha256-y4ioHAdOvDrj+Rt355MMWmXngo62w7P0OPHULLHVDM0=";
    name = "autowarefoundation-ros2_socketcan-8843077fbc33031b1de98df0aa97b2793d54b853";
  });
in
{
  ros2_socketcan = pkg "sha256-y4ioHAdOvDrj+Rt355MMWmXngo62w7P0OPHULLHVDM0=" ".";
}
