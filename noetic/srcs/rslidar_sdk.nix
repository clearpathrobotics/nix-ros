{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "RoboSense-LiDAR";
    repo = "rslidar_sdk";
    rev = "951273c8f151ee01702b1e80bc43556da62f6b86";
    hash = "sha256-f0AD05E0czEaH+hMEXh4NkhicskjCDGDbbc9cIRFZGg=";
    name = "RoboSense-LiDAR-rslidar_sdk-951273c8f151ee01702b1e80bc43556da62f6b86";
  });
in
{
  rslidar_sdk = pkg "sha256-f0AD05E0czEaH+hMEXh4NkhicskjCDGDbbc9cIRFZGg=" ".";
}
