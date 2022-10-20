{
  ament_cmake,
  ament_cmake_auto,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_ros,
  ament_index_cpp,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  class_loader,
  common_interfaces,
  launch,
  launch_ros,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  launch_xml,
  launch_yaml,
  pluginlib,
  rcl_lifecycle,
  rclcpp,
  rclcpp_action,
  rclcpp_lifecycle,
  rclpy,
  ros2cli_common_extensions,
  ros2launch,
  ros_environment,
  rosidl_default_generators,
  rosidl_default_runtime,
  sros2,
  sros2_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_core";
  pkgFinal = final.rolling.ros_core;
  src = srcs.variants.ros_core;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_cmake
    ament_cmake_auto
    ament_cmake_gmock
    ament_cmake_gtest
    ament_cmake_pytest
    ament_cmake_ros
    ament_index_cpp
    ament_index_python
    ament_lint_auto
    ament_lint_common
    class_loader
    common_interfaces
    launch
    launch_ros
    launch_testing
    launch_testing_ament_cmake
    launch_testing_ros
    launch_xml
    launch_yaml
    pluginlib
    rcl_lifecycle
    rclcpp
    rclcpp_action
    rclcpp_lifecycle
    rclpy
    ros2cli_common_extensions
    ros2launch
    ros_environment
    rosidl_default_generators
    rosidl_default_runtime
    sros2
    sros2_cmake
  ];

  colconTestDepends = [
  ];
}
