{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  nav_msgs,
  pcl_conversions,
  rclcpp,
  std_srvs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bosch_locator_bridge_utils";
  pkgFinal = final.rolling.bosch_locator_bridge_utils;
  src = srcs.locator_ros_bridge.bosch_locator_bridge_utils;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    nav_msgs
    pcl_conversions
    rclcpp
    std_srvs
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    pcl_conversions
    rclcpp
    std_srvs
    tf2_ros
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
