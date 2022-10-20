{
  base_local_planner,
  catkin,
  costmap_2d,
  geometry_msgs,
  nav_core,
  pluginlib,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "twist_recovery";
  pkgFinal = final.noetic.twist_recovery;
  src = srcs.navigation_experimental.twist_recovery;

  colconBuildDepends = [
    base_local_planner
    catkin
    costmap_2d
    geometry_msgs
    nav_core
    pluginlib
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    base_local_planner
    costmap_2d
    geometry_msgs
    nav_core
    pluginlib
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
