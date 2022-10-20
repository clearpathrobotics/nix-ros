{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  pcl_conversions,
  poco,
  roscpp,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bosch_locator_bridge";
  pkgFinal = final.noetic.bosch_locator_bridge;
  src = srcs.locator_ros_bridge.bosch_locator_bridge;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    nav_msgs
    pcl_conversions
    poco
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    nav_msgs
    pcl_conversions
    poco
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
