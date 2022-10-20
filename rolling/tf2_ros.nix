{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  geometry_msgs,
  message_filters,
  rcl_interfaces,
  rclcpp,
  rclcpp_action,
  rclcpp_components,
  rosgraph_msgs,
  tf2,
  tf2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_ros";
  pkgFinal = final.rolling.tf2_ros;
  src = srcs.geometry2.tf2_ros;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    message_filters
    rcl_interfaces
    rclcpp
    rclcpp_action
    rclcpp_components
    tf2
    tf2_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    message_filters
    rcl_interfaces
    rclcpp
    rclcpp_action
    rclcpp_components
    tf2
    tf2_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    rosgraph_msgs
  ];
}
