{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  diagnostic_msgs,
  diagnostic_updater,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "self_test";
  pkgFinal = final.rolling.self_test;
  src = srcs.diagnostics.self_test;

  colconBuildDepends = [
    ament_cmake
    diagnostic_msgs
    diagnostic_updater
    rclcpp
  ];

  colconRunDepends = [
    diagnostic_msgs
    diagnostic_updater
    rclcpp
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
