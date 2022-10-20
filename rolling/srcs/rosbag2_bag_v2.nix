{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rosbag2_bag_v2";
    rev = "676475d26bfac6fe2eee896f903fd2010af6a95a";
    hash = "sha256-sNEW0iggbjC+4zZzAYPzhcRc4m6CxlOPtxEe3mzMNcA=";
    name = "ros2-rosbag2_bag_v2-676475d26bfac6fe2eee896f903fd2010af6a95a";
  });
in
{
  ros1_rosbag_storage_vendor = pkg "sha256-3qvtA8ffmceJhzEo+V5bMeBjg6hpDjJmDzO9F9wlbs4=" "ros1_rosbag_storage_vendor";
  rosbag2_bag_v2_plugins = pkg "sha256-kQTlxCxm2jAzNUA05GCioen0Mehs4ze7NRURFGxsx58=" "rosbag2_bag_v2_plugins";
}
