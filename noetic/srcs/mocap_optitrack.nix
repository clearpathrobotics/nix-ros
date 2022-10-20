{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "mocap_optitrack";
    rev = "e62fc3b74f296f07ccb02811006e32b180a64721";
    hash = "sha256-IsRKzaxlPl8k1LmQ6TLQ742SWX1J/ZpiUrWWFxwYSQ0=";
    name = "ros-drivers-mocap_optitrack-e62fc3b74f296f07ccb02811006e32b180a64721";
  });
in
{
  mocap_optitrack = pkg "sha256-IsRKzaxlPl8k1LmQ6TLQ742SWX1J/ZpiUrWWFxwYSQ0=" ".";
}
