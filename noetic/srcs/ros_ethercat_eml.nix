{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "shadow-robot";
    repo = "ros_ethercat_eml";
    rev = "4141289773a9eefe7de20ad3b0f91986999eb76b";
    hash = "sha256-22D/FuX9CqLV2uIh1Z/YkaKhPXBToKN2k+PoMp5P72Y=";
    name = "shadow-robot-ros_ethercat_eml-4141289773a9eefe7de20ad3b0f91986999eb76b";
  });
in
{
  ros_ethercat_eml = pkg "sha256-22D/FuX9CqLV2uIh1Z/YkaKhPXBToKN2k+PoMp5P72Y=" ".";
}
