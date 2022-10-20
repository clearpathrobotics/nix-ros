{
  base_local_planner,
  catkin,
  costmap_2d,
  nav_core,
  pluginlib,
  pose_follower,
  roscpp,
  sbpl_lattice_planner,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sbpl_recovery";
  pkgFinal = final.noetic.sbpl_recovery;
  src = srcs.navigation_experimental.sbpl_recovery;

  colconBuildDepends = [
    base_local_planner
    catkin
    costmap_2d
    nav_core
    pluginlib
    pose_follower
    roscpp
    sbpl_lattice_planner
    tf2_ros
  ];

  colconRunDepends = [
    base_local_planner
    costmap_2d
    nav_core
    pluginlib
    pose_follower
    roscpp
    sbpl_lattice_planner
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
