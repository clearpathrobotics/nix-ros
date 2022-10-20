{
  angles,
  base_local_planner,
  catkin,
  cmake_modules,
  costmap_2d,
  dynamic_reconfigure,
  eigen,
  nav_core,
  nav_msgs,
  pluginlib,
  roscpp,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dwa_local_planner";
  pkgFinal = final.noetic.dwa_local_planner;
  src = srcs.navigation.dwa_local_planner;

  colconBuildDepends = [
    angles
    base_local_planner
    catkin
    cmake_modules
    costmap_2d
    dynamic_reconfigure
    eigen
    nav_core
    nav_msgs
    pluginlib
    roscpp
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    base_local_planner
    costmap_2d
    dynamic_reconfigure
    eigen
    nav_core
    nav_msgs
    pluginlib
    roscpp
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
