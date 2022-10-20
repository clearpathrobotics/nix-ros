{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_python,
  ament_lint_auto,
  ament_lint_common,
  diagnostic_msgs,
  rclcpp,
  rclcpp_lifecycle,
  rclpy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diagnostic_updater";
  pkgFinal = final.rolling.diagnostic_updater;
  src = srcs.diagnostics.diagnostic_updater;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    diagnostic_msgs
    rclcpp
    rclpy
    std_msgs
  ];

  colconRunDepends = [
    diagnostic_msgs
    rclcpp
    rclpy
    std_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    rclcpp_lifecycle
  ];
}
