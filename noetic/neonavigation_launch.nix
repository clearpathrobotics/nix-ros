{
  catkin,
  costmap_cspace,
  map_server,
  planner_cspace,
  safety_limiter,
  tf2_ros,
  trajectory_tracker,
  trajectory_tracker_rviz_plugins,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "neonavigation_launch";
  pkgFinal = final.noetic.neonavigation_launch;
  src = srcs.neonavigation.neonavigation_launch;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    costmap_cspace
    map_server
    planner_cspace
    safety_limiter
    tf2_ros
    trajectory_tracker
    trajectory_tracker_rviz_plugins
  ];

  colconTestDepends = [
  ];
}
