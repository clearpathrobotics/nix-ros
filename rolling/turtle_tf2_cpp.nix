{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  launch,
  launch_ros,
  message_filters,
  rclcpp,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  turtlesim,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtle_tf2_cpp";
  pkgFinal = final.rolling.turtle_tf2_cpp;
  src = srcs.geometry_tutorials.turtle_tf2_cpp;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    launch
    launch_ros
    message_filters
    rclcpp
    tf2
    tf2_geometry_msgs
    tf2_ros
    turtlesim
  ];

  colconRunDepends = [
    geometry_msgs
    launch
    launch_ros
    message_filters
    rclcpp
    tf2
    tf2_geometry_msgs
    tf2_ros
    turtlesim
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
