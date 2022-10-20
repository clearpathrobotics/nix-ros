{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "Slamtec";
    repo = "rplidar_ros";
    rev = "7b011f142b489d448492b5e6a683293f1e482aaa";
    hash = "sha256-FYaw9q7kTWUdALkFiQZEApqDPnkx/RZR8fO0WpjFXIk=";
    name = "Slamtec-rplidar_ros-7b011f142b489d448492b5e6a683293f1e482aaa";
  });
in
{
  rplidar_ros = pkg "sha256-FYaw9q7kTWUdALkFiQZEApqDPnkx/RZR8fO0WpjFXIk=" ".";
}
