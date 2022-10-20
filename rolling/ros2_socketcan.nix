{
  ament_cmake_auto,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  can_msgs,
  lifecycle_msgs,
  rclcpp,
  rclcpp_components,
  rclcpp_lifecycle,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2_socketcan";
  pkgFinal = final.rolling.ros2_socketcan;
  src = srcs.ros2_socketcan.ros2_socketcan;

  colconBuildDepends = [
    ament_cmake_auto
    can_msgs
    lifecycle_msgs
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
  ];

  colconRunDepends = [
    can_msgs
    lifecycle_msgs
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
