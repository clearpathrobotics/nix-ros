{
  angles,
  catkin,
  costmap_2d,
  dynamic_reconfigure,
  geometry_msgs,
  nav_core,
  nav_msgs,
  navfn,
  pluginlib,
  roscpp,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "global_planner";
  pkgFinal = final.noetic.global_planner;
  src = srcs.navigation.global_planner;

  colconBuildDepends = [
    angles
    catkin
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    nav_core
    nav_msgs
    navfn
    pluginlib
    roscpp
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    nav_core
    nav_msgs
    navfn
    pluginlib
    roscpp
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
