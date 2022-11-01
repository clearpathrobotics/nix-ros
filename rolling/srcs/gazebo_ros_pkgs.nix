{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-simulation";
    repo = "gazebo_ros_pkgs";
    rev = "4505d7ba69ce1cbf59553d3c499b6f2447cbbbb8";
    hash = "sha256-V3Ib8R51+zKEKf5OKVfnDRghwludlwFDjuQymEdsimM=";
    name = "ros-simulation-gazebo_ros_pkgs-4505d7ba69ce1cbf59553d3c499b6f2447cbbbb8";
  });
in
{
  gazebo_dev = pkg "sha256-mrueslrQTjk6YEdaHeKosgUwED/y28Lamkk7Xu2FW8Q=" "gazebo_dev";
  gazebo_msgs = pkg "sha256-UEKtnD23be8+FhZoXcZ5WNX/ki81mNNmoreVf2LEcHM=" "gazebo_msgs";
  gazebo_plugins = pkg "sha256-iBVbb/1W3ffq8aF27vz2/mzK08EtbNnY2ky5/K5L0nE=" "gazebo_plugins";
  gazebo_ros = pkg "sha256-FWn/BBR7+GjfTZUzsdmh64TkTdS8gaTIGWHeWnyX9y4=" "gazebo_ros";
  gazebo_ros_pkgs = pkg "sha256-FXZ3pJ6bNIk5o2Om5C+LOP3dCWr3gXPqxUDI4J9GV20=" "gazebo_ros_pkgs";
}
