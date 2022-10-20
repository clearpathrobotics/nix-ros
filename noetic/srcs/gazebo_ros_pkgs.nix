{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-simulation";
    repo = "gazebo_ros_pkgs";
    rev = "231a7219b36b8a6cdd100b59f66a3df2955df787";
    hash = "sha256-Nv8A/Rg5gsK8148VmqxgAmWFi3kOpQeB0B83VtbbxpI=";
    name = "ros-simulation-gazebo_ros_pkgs-231a7219b36b8a6cdd100b59f66a3df2955df787";
  });
in
{
  gazebo_dev = pkg "sha256-+7bPxrlQO8YJc54esvZD1EOcR2OWjxRuP2kESuopaoI=" "gazebo_dev";
  gazebo_msgs = pkg "sha256-LCmtwOf9TTE3qW/YmPaW5SPYetcoKHe8d6n0/wyxlLg=" "gazebo_msgs";
  gazebo_plugins = pkg "sha256-V5+2Nqf3xgyWD2Y9cA/5+21RKSyPF7PcVtO1++OKKpc=" "gazebo_plugins";
  gazebo_ros = pkg "sha256-EuIcMHRNE3nhACpg/LCqkXWLfJOjUf8Jwb1BTT964bs=" "gazebo_ros";
  gazebo_ros_control = pkg "sha256-qmY04iT4FIn70ffi/cSsdrQICl0ybxVZyr0VQL2cU3w=" "gazebo_ros_control";
  gazebo_ros_pkgs = pkg "sha256-PUvDhdhCc+pKtBnS8Z3WuN8lJvPawIvtPY9OaSBFw50=" "gazebo_ros_pkgs";
}
