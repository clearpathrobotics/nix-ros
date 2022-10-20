{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jsk-ros-pkg";
    repo = "jsk_common";
    rev = "880a9e1ea3cb549f56fe2ce1db2332838b5a2f24";
    hash = "sha256-Z09n1AD3kiKKBVmVi0Ln3qMFCE199NybU2tmlSwfuM4=";
    name = "jsk-ros-pkg-jsk_common-880a9e1ea3cb549f56fe2ce1db2332838b5a2f24";
  });
in
{
  audio_video_recorder = pkg "sha256-qUBSWrRNFP01zJz0aclbPO/bM7CITaupTR0eGuvwZJI=" "audio_video_recorder";
  dynamic_tf_publisher = pkg "sha256-SvIdIgTT5O7cGJNR73ecMOhdNOygMflMdawhghm2A+Y=" "jsk_coordination_system/dynamic_tf_publisher";
  image_view2 = pkg "sha256-bOz0CbrH6U6G2cyAcas57gRG4BpjDJ38eU21qOUYdok=" "jsk_ros_patch/image_view2";
  jsk_common = pkg "sha256-KAM9LCD+gSoFIDZGNCnyrZZQ1b5DzL2aF+RLbEY2YnU=" "jsk_common";
  jsk_data = pkg "sha256-5AsS9wMm5kSDMmfnbQAbcfm2V2t6aSD60cNQZg9T4zk=" "jsk_data";
  jsk_network_tools = pkg "sha256-Ny+s1jFgWfQrn/wN3wTnjpa0J38T1EliwgDhFx5CfPU=" "jsk_network_tools";
  jsk_rosbag_tools = pkg "sha256-ds6ypQAyBKFp26zeoYtryj1dbu2ZUDeR69MBwe/tYdM=" "jsk_rosbag_tools";
  jsk_tilt_laser = pkg "sha256-8hnsZKrR3+NSjR2YrQcCv91iqHZwbtZ6/wYtUGHlj1E=" "jsk_tilt_laser";
  jsk_tools = pkg "sha256-WGt07jLlXKMjKbVzNUcLNUydYmGnagEBUp4bLvCE/OI=" "jsk_tools";
  jsk_topic_tools = pkg "sha256-zI9gBNFdkn+S6BdYY3kDkQRLP/t3/AZyJhO7/YFdJuc=" "jsk_topic_tools";
  multi_map_server = pkg "sha256-e0aYLRc1kI+gHkjBn9uy+l6RrVim+ePXD+pJDLdDYNU=" "jsk_ros_patch/multi_map_server";
  parallel_util = pkg "sha256-fwosRhQklhqRpn0TBGUzO8BIhz4g4Vn50EUx5VcUOwg=" "parallel_util";
  virtual_force_publisher = pkg "sha256-dG82XAJu9RwjPifnBPv4urgsJdnqiQd1UCWssNU5oXY=" "virtual_force_publisher";
}
