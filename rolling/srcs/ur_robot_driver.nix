{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UniversalRobots";
    repo = "Universal_Robots_ROS2_Driver";
    rev = "01cd1ee47e1913a04557718e23034521caefeaa4";
    hash = "sha256-ir1x4v5e9gzwbdE/G1LCz0FK0N1W6H/yfDaet6iqgv8=";
    name = "UniversalRobots-Universal_Robots_ROS2_Driver-01cd1ee47e1913a04557718e23034521caefeaa4";
  });
in
{
  ur = pkg "sha256-UfMmsvIk2Ljz7IA+AYOxC235Qhu+tHU2KYkmlPN8q3s=" "ur";
  ur_bringup = pkg "sha256-h6aj5ArlHEimZvvWpSUXLPCS7oqPOxCmhmm7DlF6VYs=" "ur_bringup";
  ur_calibration = pkg "sha256-MmtWYzslvqeZLQ64HRfRt7utOzxsuCVmOi9eLZZKOAo=" "ur_calibration";
  ur_controllers = pkg "sha256-bexL780riJoMtifn5ZhRN6EgZADCdmVWkzkrJLYwppo=" "ur_controllers";
  ur_dashboard_msgs = pkg "sha256-oGoC6bHw9Sp7+F34pKPTP88HzPBYD60UkXEj4GShLxY=" "ur_dashboard_msgs";
  ur_moveit_config = pkg "sha256-/51Umwvv5YpoaA+PZ9o2Q1EyVjXL0pzDNI1lPH6bgEk=" "ur_moveit_config";
  ur_robot_driver = pkg "sha256-2g/rhgWcGVUSmkwuENzduHsjLXKcaIQiu1ygPQDREyQ=" "ur_robot_driver";
}
