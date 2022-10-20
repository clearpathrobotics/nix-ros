{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_python,
  ament_lint_auto,
  ament_lint_common,
  diagnostic_msgs,
  launch_testing_ament_cmake,
  launch_testing_ros,
  pluginlib,
  rclcpp,
  rclpy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diagnostic_aggregator";
  pkgFinal = final.rolling.diagnostic_aggregator;
  src = srcs.diagnostics.diagnostic_aggregator;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    diagnostic_msgs
    pluginlib
    rclcpp
    rclpy
    std_msgs
  ];

  colconRunDepends = [
    rclpy
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    launch_testing_ament_cmake
    launch_testing_ros
  ];
}
