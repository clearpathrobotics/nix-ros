{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rclcpp_lifecycle,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2lifecycle_test_fixtures";
  pkgFinal = final.rolling.ros2lifecycle_test_fixtures;
  src = srcs.ros2cli.ros2lifecycle_test_fixtures;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rclcpp_lifecycle
  ];

  colconRunDepends = [
    rclcpp
    rclcpp_lifecycle
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
