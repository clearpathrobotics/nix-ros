{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "yoshito-n-students";
    repo = "remote_rosbag_record";
    rev = "a07e3711f7d6269b0848a55dec03bc18330e806f";
    hash = "sha256-N9ZcagPXlM4Wa3uCJ5UM/FBTEZjXn4r/yq7+gpeyOWs=";
    name = "yoshito-n-students-remote_rosbag_record-a07e3711f7d6269b0848a55dec03bc18330e806f";
  });
in
{
  remote_rosbag_record = pkg "sha256-N9ZcagPXlM4Wa3uCJ5UM/FBTEZjXn4r/yq7+gpeyOWs=" ".";
}
