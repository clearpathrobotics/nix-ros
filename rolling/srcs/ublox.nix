{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "KumarRobotics";
    repo = "ublox";
    rev = "71e2f0c7562c5c97c72045a7d6758447535c8a3d";
    hash = "sha256-v8W3NYSyTGb1sCFTLrvkO812kE34eFUC7ztndQwi6ts=";
    name = "KumarRobotics-ublox-71e2f0c7562c5c97c72045a7d6758447535c8a3d";
  });
in
{
  ublox = pkg "sha256-tCPY6Wu0TQ0Auvkx3xW6yyreMV7K0GruiyS4AZ29LtI=" "ublox";
  ublox_gps = pkg "sha256-TKgThHykpqV1WHiJ/JWsaXwYq+LRLC5GL3Kec/EGqzA=" "ublox_gps";
  ublox_msgs = pkg "sha256-y+4Wac/LAoobvoFcSIJ2PGoih6+tPbrMnRKVg6BxUgM=" "ublox_msgs";
  ublox_serialization = pkg "sha256-b2kP01irILk8Ct0RNRYsczUU7sgdAugMNejSpNFPdGE=" "ublox_serialization";
}
