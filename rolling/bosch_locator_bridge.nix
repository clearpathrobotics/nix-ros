{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  launch_xml,
  nav_msgs,
  pcl_conversions,
  poco,
  rclcpp,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  std_srvs,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bosch_locator_bridge";
  pkgFinal = final.rolling.bosch_locator_bridge;
  src = srcs.locator_ros_bridge.bosch_locator_bridge;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    launch_xml
    nav_msgs
    pcl_conversions
    poco
    rclcpp
    rosidl_default_generators
    sensor_msgs
    std_srvs
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    launch_xml
    nav_msgs
    pcl_conversions
    poco
    rclcpp
    rosidl_default_runtime
    sensor_msgs
    std_srvs
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
