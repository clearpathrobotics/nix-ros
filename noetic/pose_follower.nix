{
  base_local_planner,
  catkin,
  costmap_2d,
  dynamic_reconfigure,
  nav_core,
  nav_msgs,
  pluginlib,
  roscpp,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pose_follower";
  pkgFinal = final.noetic.pose_follower;
  src = srcs.navigation_experimental.pose_follower;

  colconBuildDepends = [
    base_local_planner
    catkin
    costmap_2d
    dynamic_reconfigure
    nav_core
    nav_msgs
    pluginlib
    roscpp
    tf2_geometry_msgs
    tf2_ros
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
  ];

  colconTestDepends = [
  ];
}
