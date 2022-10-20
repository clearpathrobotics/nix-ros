{
  catkin,
  costmap_2d,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_core,
  nav_msgs,
  pluginlib,
  roscpp,
  tf,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sbpl_lattice_planner";
  pkgFinal = final.noetic.sbpl_lattice_planner;
  src = srcs.navigation_experimental.sbpl_lattice_planner;

  colconBuildDepends = [
    catkin
    costmap_2d
    geometry_msgs
    message_generation
    nav_core
    nav_msgs
    pluginlib
    roscpp
    tf
    tf2
  ];

  colconRunDepends = [
    costmap_2d
    geometry_msgs
    message_runtime
    nav_core
    nav_msgs
    pluginlib
    roscpp
    tf
    tf2
  ];

  colconTestDepends = [
  ];
}
