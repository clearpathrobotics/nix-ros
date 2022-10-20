{
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  ign_rviz_common,
  ignition,
  nav_msgs,
  rclcpp,
  sensor_msgs,
  tf2_msgs,
  tf2_ros,
  urdf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ign_rviz_plugins";
  pkgFinal = final.rolling.ign_rviz_plugins;
  src = srcs.ign_rviz.ign_rviz_plugins;

  colconBuildDepends = [
    geometry_msgs
    ign_rviz_common
    ignition.math6
    nav_msgs
    rclcpp
    sensor_msgs
    tf2_msgs
    tf2_ros
    urdf
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    ign_rviz_common
    ignition.math6
    nav_msgs
    rclcpp
    sensor_msgs
    tf2_msgs
    tf2_ros
    urdf
    visualization_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
