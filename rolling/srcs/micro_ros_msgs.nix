{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "micro-ROS";
    repo = "micro_ros_msgs";
    rev = "e3664463e78ae5d0c34d86be92d707b3d9dfd27d";
    hash = "sha256-8kZ9BdSn5jtKdab8H4qahShWMFbfqwyVr4FjenUF0xA=";
    name = "micro-ROS-micro_ros_msgs-e3664463e78ae5d0c34d86be92d707b3d9dfd27d";
  });
in
{
  micro_ros_msgs = pkg "sha256-8kZ9BdSn5jtKdab8H4qahShWMFbfqwyVr4FjenUF0xA=" ".";
}
