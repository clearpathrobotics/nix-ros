{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "ros_control";
    rev = "66a4ef76f4f6d5b4e3e2bcda4e4f0a3dc7bd7e4b";
    hash = "sha256-r/++IRQEjE+ZU+BEdR8TH3WInZHQIebkxETKgEHrY4o=";
    name = "ros-controls-ros_control-66a4ef76f4f6d5b4e3e2bcda4e4f0a3dc7bd7e4b";
  });
in
{
  combined_robot_hw = pkg "sha256-n/Gy+hQW1G14YrMgB0u4UKUSHyrBZoJC4u2ajEjq0bI=" "combined_robot_hw";
  combined_robot_hw_tests = pkg "sha256-c7U6zu7txAfwo5Rff8hG18P9ud8p5s2CVZ56YvW/Ey8=" "combined_robot_hw_tests";
  controller_interface = pkg "sha256-5yk+XvKzeyk6C8kCRMMDYfQ9OYdzEoWh6YCO36aWDuU=" "controller_interface";
  controller_manager = pkg "sha256-sSn9Z3ozQ4JXW9RDFGZjbtQxZd/3N3EZMHdb+drINXk=" "controller_manager";
  controller_manager_msgs = pkg "sha256-4xA0uXZ+3rdNYFinbdjDBYBTXCKgsV6G8M0jmBjC08I=" "controller_manager_msgs";
  controller_manager_tests = pkg "sha256-ZIP7TjiP84jA+KPb4vOJzGa9BZ8tnV71o7OqCeV3K1w=" "controller_manager_tests";
  hardware_interface = pkg "sha256-nbgLOg+jF68rnz4U5OPeac6QLwBaa33SPyIULxfTcsI=" "hardware_interface";
  joint_limits_interface = pkg "sha256-7BPEbVyFba0QcOn8LFSKido/pmT6qSAzz5hm91TUP/c=" "joint_limits_interface";
  ros_control = pkg "sha256-xSh2TDLGnqW1PRxTi/exq8Q+M0wqPoCYXF9SCT6rviw=" "ros_control";
  rqt_controller_manager = pkg "sha256-Gu+jpi7Ycs8tHmQ2/alR6sX6hryQq1W9OXXe1jNEea0=" "rqt_controller_manager";
  transmission_interface = pkg "sha256-PXQmdyrq5PkAb1IYi6aTNyFZgO8pbwApc03VCPtfZ/Q=" "transmission_interface";
}
