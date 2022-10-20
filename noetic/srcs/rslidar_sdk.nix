{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "RoboSense-LiDAR";
    repo = "rslidar_sdk";
    rev = "528aad16cd9eca95d7f65820e53022b735f6dcc7";
    hash = "sha256-BQUeumIlbkf+vtUEh4WryIRK05dHER+slIFoVecYsOw=";
    name = "RoboSense-LiDAR-rslidar_sdk-528aad16cd9eca95d7f65820e53022b735f6dcc7";
  });
in
{
  rslidar_sdk = pkg "sha256-BQUeumIlbkf+vtUEh4WryIRK05dHER+slIFoVecYsOw=" ".";
}
