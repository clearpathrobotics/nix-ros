{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  joy,
  launch_ros,
  launch_testing_ament_cmake,
  launch_testing_ros,
  rclcpp,
  rclcpp_components,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "teleop_twist_joy";
  pkgFinal = final.rolling.teleop_twist_joy;
  src = srcs.teleop_twist_joy.teleop_twist_joy;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    joy
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    launch_ros
    launch_testing_ament_cmake
    launch_testing_ros
  ];
}
