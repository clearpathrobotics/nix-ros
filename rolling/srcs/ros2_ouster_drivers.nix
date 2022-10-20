{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "SteveMacenski";
    repo = "ros2_ouster_drivers";
    rev = "2a2a7db5aebe17ea05b6ad6e04047ad5cfc0f0ad";
    hash = "sha256-I6S59BcmN2PToJSAhMDX7KiNG3UNl61GgPYObP/QjIk=";
    name = "SteveMacenski-ros2_ouster_drivers-2a2a7db5aebe17ea05b6ad6e04047ad5cfc0f0ad";
  });
in
{
  ouster_msgs = pkg "sha256-OV8QyTHYwCZNAno0PLyVflOh/iA73HF0hUHU3UtDaqM=" "ouster_msgs";
  ros2_ouster = pkg "sha256-rFLBlhSXRJ/Xuz3LjeOcBRxIxquFqOhgsVgVD62jayY=" "ros2_ouster";
}
