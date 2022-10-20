{
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  ignition,
  rclcpp,
  tf2_geometry_msgs,
  tf2_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ign_rviz_common";
  pkgFinal = final.rolling.ign_rviz_common;
  src = srcs.ign_rviz.ign_rviz_common;

  colconBuildDepends = [
    geometry_msgs
    ignition.math6
    rclcpp
    tf2_geometry_msgs
    tf2_msgs
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    ignition.math6
    rclcpp
    tf2_geometry_msgs
    tf2_msgs
    tf2_ros
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
