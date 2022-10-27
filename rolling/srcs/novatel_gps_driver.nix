{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "swri-robotics";
    repo = "novatel_gps_driver";
    rev = "4ce9ba24118c4cccc04533c0e5feae4941ea1bb4";
    hash = "sha256-/ZCgzb5BCifFjctyodKGXWQVolfOBQVOiMvlVdoE+pM=";
    name = "swri-robotics-novatel_gps_driver-4ce9ba24118c4cccc04533c0e5feae4941ea1bb4";
  });
in
{
  novatel_gps_driver = pkg "sha256-AUZEO2ov3eB720LIor9+ee/pLsuPGzt1SAWlGqGalnU=" "novatel_gps_driver";
  novatel_gps_msgs = pkg "sha256-m46G0xJJOb+WmCE3ngzX6N/Vuj9P1OU+dKjQdt/QsvM=" "novatel_gps_msgs";
}
