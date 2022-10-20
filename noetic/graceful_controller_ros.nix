{
  angles,
  base_local_planner,
  catkin,
  costmap_2d,
  dynamic_reconfigure,
  geometry_msgs,
  graceful_controller,
  nav_core,
  nav_msgs,
  pluginlib,
  roscpp,
  std_msgs,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "graceful_controller_ros";
  pkgFinal = final.noetic.graceful_controller_ros;
  src = srcs.graceful_controller.graceful_controller_ros;

  colconBuildDepends = [
    angles
    base_local_planner
    catkin
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    graceful_controller
    nav_core
    nav_msgs
    pluginlib
    roscpp
    std_msgs
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    angles
    base_local_planner
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    graceful_controller
    nav_core
    nav_msgs
    pluginlib
    roscpp
    std_msgs
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
