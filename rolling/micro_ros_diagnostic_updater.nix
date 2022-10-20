{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  micro_ros_diagnostic_msgs,
  osrf_testing_tools_cpp,
  rclc,
  ros_environment,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "micro_ros_diagnostic_updater";
  pkgFinal = final.rolling.micro_ros_diagnostic_updater;
  src = srcs.micro_ros_diagnostics.micro_ros_diagnostic_updater;

  colconBuildDepends = [
    ament_cmake_ros
    micro_ros_diagnostic_msgs
    rclc
  ];

  colconRunDepends = [
    micro_ros_diagnostic_msgs
    rclc
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    micro_ros_diagnostic_msgs
    osrf_testing_tools_cpp
    ros_environment
  ];
}
