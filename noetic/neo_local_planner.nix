{
  base_local_planner,
  catkin,
  cmake_modules,
  costmap_2d,
  dynamic_reconfigure,
  nav_core,
  nav_msgs,
  pluginlib,
  roscpp,
  tf2_geometry_msgs,
  tf2_ros,
  tf2_sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "neo_local_planner";
  pkgFinal = final.noetic.neo_local_planner;
  src = srcs.neo_local_planner.neo_local_planner;

  colconBuildDepends = [
    base_local_planner
    catkin
    cmake_modules
    costmap_2d
    dynamic_reconfigure
    nav_core
    nav_msgs
    pluginlib
    roscpp
    tf2_geometry_msgs
    tf2_ros
    tf2_sensor_msgs
  ];

  colconRunDepends = [
    base_local_planner
    costmap_2d
    dynamic_reconfigure
    nav_core
    nav_msgs
    pluginlib
    roscpp
    tf2_geometry_msgs
    tf2_ros
    tf2_sensor_msgs
  ];

  colconTestDepends = [
  ];
}
