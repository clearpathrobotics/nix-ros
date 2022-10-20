{
  base_local_planner,
  catkin,
  cmake_modules,
  costmap_2d,
  costmap_converter,
  dynamic_reconfigure,
  geometry_msgs,
  interactive_markers,
  mbf_costmap_core,
  mbf_msgs,
  message_generation,
  message_runtime,
  nav_core,
  nav_msgs,
  pluginlib,
  roscpp,
  std_msgs,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "teb_local_planner";
  pkgFinal = final.noetic.teb_local_planner;
  src = srcs.teb_local_planner.teb_local_planner;

  colconBuildDepends = [
    base_local_planner
    catkin
    cmake_modules
    costmap_2d
    costmap_converter
    dynamic_reconfigure
    geometry_msgs
    interactive_markers
    mbf_costmap_core
    mbf_msgs
    message_generation
    nav_core
    nav_msgs
    pluginlib
    roscpp
    std_msgs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    base_local_planner
    costmap_2d
    costmap_converter
    dynamic_reconfigure
    geometry_msgs
    interactive_markers
    mbf_costmap_core
    mbf_msgs
    message_runtime
    nav_core
    nav_msgs
    pluginlib
    roscpp
    std_msgs
    tf2
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
