{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-tooling";
    repo = "rosbag2_storage_mcap";
    rev = "9d67fa1c9b4e7512baf38ed31fef3dee9914b64c";
    hash = "sha256-zIdCBRj+qqaAA33HDUbDqU/ISSlW9WsPCafGNZUn0F0=";
    name = "ros-tooling-rosbag2_storage_mcap-9d67fa1c9b4e7512baf38ed31fef3dee9914b64c";
  });
in
{
  mcap_vendor = pkg "sha256-Z710/3CHtxJ85N31YguojNl/LgfCABdEhwAtF7ogL+0=" "mcap_vendor";
  rosbag2_storage_mcap = pkg "sha256-VVSGXJl20he1MjGW5UP/cFCf9FXb45VzaAFT3lEinBI=" "rosbag2_storage_mcap";
  rosbag2_storage_mcap_testdata = pkg "sha256-7vQie/P9VlPh+cSpAJFUKlgmrhkBi1lBqj6wIP/NMPs=" "rosbag2_storage_mcap_testdata";
}
