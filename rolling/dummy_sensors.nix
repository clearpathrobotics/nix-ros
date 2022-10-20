{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dummy_sensors";
  pkgFinal = final.rolling.dummy_sensors;
  src = srcs.demos.dummy_sensors;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    sensor_msgs
  ];

  colconRunDepends = [
    rclcpp
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
