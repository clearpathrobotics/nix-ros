{
  catkin,
  costmap_2d,
  nav_core,
  pluginlib,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "goal_passer";
  pkgFinal = final.noetic.goal_passer;
  src = srcs.navigation_experimental.goal_passer;

  colconBuildDepends = [
    catkin
    costmap_2d
    nav_core
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    costmap_2d
    nav_core
    pluginlib
    roscpp
  ];

  colconTestDepends = [
  ];
}
