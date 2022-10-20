{
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  ign_rviz_common,
  ign_rviz_plugins,
  ignition,
  nav_msgs,
  rclcpp,
  sensor_msgs,
  tf2_geometry_msgs,
  tf2_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ign_rviz";
  pkgFinal = final.rolling.ign_rviz;
  src = srcs.ign_rviz.ign_rviz;

  colconBuildDepends = [
    geometry_msgs
    ign_rviz_common
    ign_rviz_plugins
    ignition.math6
    nav_msgs
    rclcpp
    sensor_msgs
    tf2_geometry_msgs
    tf2_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    ign_rviz_common
    ign_rviz_plugins
    ignition.math6
    nav_msgs
    rclcpp
    sensor_msgs
    tf2_geometry_msgs
    tf2_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
