{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  lifecycle_msgs,
  rclcpp_lifecycle,
  ros_testing,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lifecycle";
  pkgFinal = final.rolling.lifecycle;
  src = srcs.demos.lifecycle;

  colconBuildDepends = [
    ament_cmake
    lifecycle_msgs
    rclcpp_lifecycle
    std_msgs
  ];

  colconRunDepends = [
    lifecycle_msgs
    rclcpp_lifecycle
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    ros_testing
  ];
}
