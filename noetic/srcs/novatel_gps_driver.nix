{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "swri-robotics";
    repo = "novatel_gps_driver";
    rev = "fa8697bbe56ca02d2e9e104827fa485d5b71d40a";
    hash = "sha256-F4qXEVbdRhvpSbC1byEUdM05bs4FgeBB3MsEcGpvOK0=";
    name = "swri-robotics-novatel_gps_driver-fa8697bbe56ca02d2e9e104827fa485d5b71d40a";
  });
in
{
  novatel_gps_driver = pkg "sha256-H/vwWBoP6Zzp2RBjOKUTk41xBUhAOKfR9Mvwl9lT8Zw=" "novatel_gps_driver";
  novatel_gps_msgs = pkg "sha256-34UREaLAIikonkKjThFMuVHYqgosVzlE5j0mFU0lexE=" "novatel_gps_msgs";
}
