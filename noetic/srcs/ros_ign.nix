{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ros_ign";
    rev = "349b36daa01ee21b7d1de265c8015e47230f6c97";
    hash = "sha256-MQRCRa1sBTM9J35quB7AhbwV4du9+m6L/a7d/FxTuYM=";
    name = "ignitionrobotics-ros_ign-349b36daa01ee21b7d1de265c8015e47230f6c97";
  });
in
{
  ros_ign = pkg "sha256-sv+7/BkrqVVA95p/7uqcLfoGxiT5tE/L/pnfFmAicF4=" "ros_ign";
  ros_ign_bridge = pkg "sha256-bID5d7DCktk651e0BNnBxmma/C+dQ1udJygtGikhV/s=" "ros_ign_bridge";
  ros_ign_gazebo = pkg "sha256-8ByQUbs7F5UvYzDCqzyjQ957T5darFeZq67lcwPQQrU=" "ros_ign_gazebo";
  ros_ign_gazebo_demos = pkg "sha256-HaVH1lDPQfDOiGgztZh9PHDIHLPUlaf64mmFwBw3qH4=" "ros_ign_gazebo_demos";
  ros_ign_image = pkg "sha256-gvUs1apYO+4dY7lO5JGeCPGiW//7DtcCNoXvOr1J8FM=" "ros_ign_image";
}
