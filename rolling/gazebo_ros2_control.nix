{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  angles,
  controller_manager,
  gazebo_dev,
  gazebo_ros,
  hardware_interface,
  pluginlib,
  rclcpp,
  std_msgs,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_ros2_control";
  pkgFinal = final.rolling.gazebo_ros2_control;
  src = srcs.gazebo_ros2_control.gazebo_ros2_control;

  colconBuildDepends = [
    ament_cmake
    angles
    controller_manager
    gazebo_dev
    gazebo_ros
    hardware_interface
    pluginlib
    rclcpp
    std_msgs
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    angles
    controller_manager
    gazebo_dev
    gazebo_ros
    hardware_interface
    pluginlib
    rclcpp
    std_msgs
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
