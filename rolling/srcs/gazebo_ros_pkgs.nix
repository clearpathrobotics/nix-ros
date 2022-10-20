{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-simulation";
    repo = "gazebo_ros_pkgs";
    rev = "1333b62221c717d933bef701fc7bec550f4ce61b";
    hash = "sha256-KNXNNZE1TvIU+x56WUpMZ8UEDuFGzRhVcZ5tSgK0Xuw=";
    name = "ros-simulation-gazebo_ros_pkgs-1333b62221c717d933bef701fc7bec550f4ce61b";
  });
in
{
  gazebo_dev = pkg "sha256-mrueslrQTjk6YEdaHeKosgUwED/y28Lamkk7Xu2FW8Q=" "gazebo_dev";
  gazebo_msgs = pkg "sha256-UEKtnD23be8+FhZoXcZ5WNX/ki81mNNmoreVf2LEcHM=" "gazebo_msgs";
  gazebo_plugins = pkg "sha256-cVwu4Fq5jqtOSLheiEdVzWk948t02NBWuVJGfu+pLAk=" "gazebo_plugins";
  gazebo_ros = pkg "sha256-h/ul2itmzSFiSkwKdBJUpGAl30m0jVHDtFRvfbt8z3k=" "gazebo_ros";
  gazebo_ros_pkgs = pkg "sha256-FXZ3pJ6bNIk5o2Om5C+LOP3dCWr3gXPqxUDI4J9GV20=" "gazebo_ros_pkgs";
}
