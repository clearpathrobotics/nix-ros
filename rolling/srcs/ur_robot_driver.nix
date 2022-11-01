{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UniversalRobots";
    repo = "Universal_Robots_ROS2_Driver";
    rev = "a76041d466c16890f14dc9136521fa677792bbdd";
    hash = "sha256-iTqb3kaYyCmSySnnJ5ddMVV/PECVS0aXNVSTJGSr8fI=";
    name = "UniversalRobots-Universal_Robots_ROS2_Driver-a76041d466c16890f14dc9136521fa677792bbdd";
  });
in
{
  ur = pkg "sha256-UfMmsvIk2Ljz7IA+AYOxC235Qhu+tHU2KYkmlPN8q3s=" "ur";
  ur_bringup = pkg "sha256-h6aj5ArlHEimZvvWpSUXLPCS7oqPOxCmhmm7DlF6VYs=" "ur_bringup";
  ur_calibration = pkg "sha256-MmtWYzslvqeZLQ64HRfRt7utOzxsuCVmOi9eLZZKOAo=" "ur_calibration";
  ur_controllers = pkg "sha256-bexL780riJoMtifn5ZhRN6EgZADCdmVWkzkrJLYwppo=" "ur_controllers";
  ur_dashboard_msgs = pkg "sha256-oGoC6bHw9Sp7+F34pKPTP88HzPBYD60UkXEj4GShLxY=" "ur_dashboard_msgs";
  ur_moveit_config = pkg "sha256-/51Umwvv5YpoaA+PZ9o2Q1EyVjXL0pzDNI1lPH6bgEk=" "ur_moveit_config";
  ur_robot_driver = pkg "sha256-Wuk1zQpzcaGJ4NirojWoZhja7u8M772ql0tXLj/ZsMY=" "ur_robot_driver";
}
