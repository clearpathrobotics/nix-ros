{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UniversalRobots";
    repo = "Universal_Robots_ROS2_Driver";
    rev = "72c91fd65bc101c0d9eec0bb182ee5895b885092";
    hash = "sha256-XsYWcl6C7rLr9dn+c0pRjcSY3tuYgv/SzqzjDjD6CK4=";
    name = "UniversalRobots-Universal_Robots_ROS2_Driver-72c91fd65bc101c0d9eec0bb182ee5895b885092";
  });
in
{
  ur = pkg "sha256-UfMmsvIk2Ljz7IA+AYOxC235Qhu+tHU2KYkmlPN8q3s=" "ur";
  ur_bringup = pkg "sha256-h6aj5ArlHEimZvvWpSUXLPCS7oqPOxCmhmm7DlF6VYs=" "ur_bringup";
  ur_calibration = pkg "sha256-MmtWYzslvqeZLQ64HRfRt7utOzxsuCVmOi9eLZZKOAo=" "ur_calibration";
  ur_controllers = pkg "sha256-bexL780riJoMtifn5ZhRN6EgZADCdmVWkzkrJLYwppo=" "ur_controllers";
  ur_dashboard_msgs = pkg "sha256-oGoC6bHw9Sp7+F34pKPTP88HzPBYD60UkXEj4GShLxY=" "ur_dashboard_msgs";
  ur_moveit_config = pkg "sha256-/51Umwvv5YpoaA+PZ9o2Q1EyVjXL0pzDNI1lPH6bgEk=" "ur_moveit_config";
  ur_robot_driver = pkg "sha256-0/y7LlSJm1bOAHDcrO/Z72GEo5WyM4QXa742ZUM0/cc=" "ur_robot_driver";
}
