{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  roscpp,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2_geometry_msgs,
  tf2_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sbg_driver";
  pkgFinal = final.noetic.sbg_driver;
  src = srcs.sbg_driver.sbg_driver;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2_geometry_msgs
    tf2_msgs
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2_geometry_msgs
    tf2_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
