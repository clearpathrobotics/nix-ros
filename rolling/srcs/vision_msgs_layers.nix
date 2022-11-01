{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-sports";
    repo = "vision_msgs_layers";
    rev = "d437fb3e0bd7394346db73f18c05d98610042366";
    hash = "sha256-H6gJab7ECGFyQdWbAy0OHHsDF2kJ7JvR+13GzwGAkxU=";
    name = "ros-sports-vision_msgs_layers-d437fb3e0bd7394346db73f18c05d98610042366";
  });
in
{
  vision_msgs_layers = pkg "sha256-/AF+whPTfuXAf3vP/iP6XQf4SZFSuJjxb7oQ61JEiGs=" "vision_msgs_layers";
}
