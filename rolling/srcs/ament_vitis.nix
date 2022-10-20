{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-acceleration";
    repo = "ament_vitis";
    rev = "01f869eee1bb61ea91fd7363bf7bb0688e2c56c1";
    hash = "sha256-Na2vZDmx1yo4NFMDS9mmn1De1NRtjjs953gSAHRCxtc=";
    name = "ros-acceleration-ament_vitis-01f869eee1bb61ea91fd7363bf7bb0688e2c56c1";
  });
in
{
  ament_vitis = pkg "sha256-Na2vZDmx1yo4NFMDS9mmn1De1NRtjjs953gSAHRCxtc=" ".";
}
