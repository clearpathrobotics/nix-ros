{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  diagnostic_msgs,
  micro_ros_diagnostic_msgs,
  osrf_testing_tools_cpp,
  rclcpp,
  ros_environment,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "micro_ros_diagnostic_bridge";
  pkgFinal = final.rolling.micro_ros_diagnostic_bridge;
  src = srcs.micro_ros_diagnostics.micro_ros_diagnostic_bridge;

  colconBuildDepends = [
    ament_cmake_ros
    diagnostic_msgs
    micro_ros_diagnostic_msgs
    rclcpp
  ];

  colconRunDepends = [
    diagnostic_msgs
    micro_ros_diagnostic_msgs
    rclcpp
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    diagnostic_msgs
    micro_ros_diagnostic_msgs
    osrf_testing_tools_cpp
    ros_environment
  ];
}
