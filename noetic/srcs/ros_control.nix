{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "ros_control";
    rev = "7f3a4064f8022bdcc577c443a595f42270154098";
    hash = "sha256-RQgBY8peOOigR/7IY6SNk/KbjzxpODqWUTd66rUUhM0=";
    name = "ros-controls-ros_control-7f3a4064f8022bdcc577c443a595f42270154098";
  });
in
{
  combined_robot_hw = pkg "sha256-pV0J/a25Ob8/42S3YQwSWjnj7JRMs9mn9CDnn+73rvM=" "combined_robot_hw";
  combined_robot_hw_tests = pkg "sha256-xtzLEu1g8OCf1s8fNZ4Y5PWg6g2S5vKjcwGxXf8RbUs=" "combined_robot_hw_tests";
  controller_interface = pkg "sha256-WXFF6wqH7WAE7+eKEzy9EFQzEvdXTT5GTGS4bs2BsuI=" "controller_interface";
  controller_manager = pkg "sha256-IEVsbbRmfchMSHJg0S4yAtgjcKKdQOu1/wqLTVqzVZk=" "controller_manager";
  controller_manager_msgs = pkg "sha256-c2s6AkZIPdPp/BIDm1khivzFrGqAbacl2X/sCJgaAGo=" "controller_manager_msgs";
  controller_manager_tests = pkg "sha256-uP7eFr03RdhJpE9GIP2tfc6BsKeJgzyFhEBEqRj1plQ=" "controller_manager_tests";
  hardware_interface = pkg "sha256-eFlxJV2llwkgrqfmIkG6BHh9DPahmMznTYmTZxuRNc0=" "hardware_interface";
  joint_limits_interface = pkg "sha256-dM+fPrN//uKtGPksmovCNtHZBJ3HYG6HbZlbYnNIaFM=" "joint_limits_interface";
  ros_control = pkg "sha256-xFB18rtMUQsbO0s2w8MHeS254KPmaThnBimDiUK4YK0=" "ros_control";
  rqt_controller_manager = pkg "sha256-UusnF6Q+PwsaevvZd9wTzqW4S5ZMQ1an4K8GCraEfCY=" "rqt_controller_manager";
  transmission_interface = pkg "sha256-nlzWyYqvXgA8BdtZYNuLNGxE+Cd6x3zFLQLYhoZR+QE=" "transmission_interface";
}
