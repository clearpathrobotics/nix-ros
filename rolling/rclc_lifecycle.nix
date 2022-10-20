{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  lifecycle_msgs,
  osrf_testing_tools_cpp,
  rcl_lifecycle,
  rclc,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rclc_lifecycle";
  pkgFinal = final.rolling.rclc_lifecycle;
  src = srcs.rclc.rclc_lifecycle;

  colconBuildDepends = [
    ament_cmake_ros
    lifecycle_msgs
    rcl_lifecycle
    rclc
    std_msgs
  ];

  colconRunDepends = [
    lifecycle_msgs
    rcl_lifecycle
    rclc
    std_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    osrf_testing_tools_cpp
  ];
}
