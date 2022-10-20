{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-industrial";
    repo = "abb_robot_driver_interfaces";
    rev = "5376912f7c676754033e5ff9c652fb94307c371a";
    hash = "sha256-l9SoZmR0XzqSdkun6N6c5Be47a9gL5NhkBt7yaCwCgc=";
    name = "ros-industrial-abb_robot_driver_interfaces-5376912f7c676754033e5ff9c652fb94307c371a";
  });
in
{
  abb_egm_msgs = pkg "sha256-pWi+HKFvuC1qQDiV75icZuq6w2aDghwFkpWe1ZjJvWg=" "abb_egm_msgs";
  abb_rapid_msgs = pkg "sha256-zfJROAZOz0mi6JfoHB7GYahttIXkGbH//uOlvmXeIiI=" "abb_rapid_msgs";
  abb_rapid_sm_addin_msgs = pkg "sha256-M/98kzJxhwAk02mO2P4OpC82X7+uYORRkhQxPoRndrc=" "abb_rapid_sm_addin_msgs";
  abb_robot_msgs = pkg "sha256-QtJXH3DU2qw8FssdlydhXDqPVmAxJALT6GwSH6PXOH8=" "abb_robot_msgs";
}
