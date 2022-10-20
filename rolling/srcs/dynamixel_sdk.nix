{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "DynamixelSDK";
    rev = "c9b5fdaabdf8429462329283e59ed0605919423d";
    hash = "sha256-q4U4ojjbtRt6jt8gH6EISGmJVuKoglaImz7ss1MjE9I=";
    name = "ROBOTIS-GIT-DynamixelSDK-c9b5fdaabdf8429462329283e59ed0605919423d";
  });
in
{
  dynamixel_sdk = pkg "sha256-2Vx55FIRiJ+4hfohCyZPqu6FNPc09e8LhOzvLCkugDU=" "dynamixel_sdk";
  dynamixel_sdk_custom_interfaces = pkg "sha256-0ULRyYvvOb1009hbk089LlDrLoGyLZOEloGTCjs66/8=" "dynamixel_sdk_custom_interfaces";
  dynamixel_sdk_examples = pkg "sha256-xzAdZhQ+uOP/ggF9IAMTcK5A7hHwXPdjaH0EjRYUD3s=" "dynamixel_sdk_examples";
}
