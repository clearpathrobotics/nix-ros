{
  catkin,
  cmake_modules,
  costmap_2d,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_core,
  nav_msgs,
  netpbm,
  pluginlib,
  rosconsole,
  roscpp,
  rosunit,
  sensor_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "navfn";
  pkgFinal = final.noetic.navfn;
  src = srcs.navigation.navfn;

  colconBuildDepends = [
    catkin
    cmake_modules
    costmap_2d
    geometry_msgs
    message_generation
    nav_core
    nav_msgs
    netpbm
    pluginlib
    rosconsole
    roscpp
    sensor_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    costmap_2d
    geometry_msgs
    message_runtime
    nav_core
    nav_msgs
    pluginlib
    rosconsole
    roscpp
    sensor_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
    rosunit
  ];
}
