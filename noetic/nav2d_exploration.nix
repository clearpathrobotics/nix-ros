{
  catkin,
  geometry_msgs,
  nav2d_navigator,
  nav_msgs,
  pluginlib,
  roscpp,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav2d_exploration";
  pkgFinal = final.noetic.nav2d_exploration;
  src = srcs.navigation_2d.nav2d_exploration;

  colconBuildDepends = [
    catkin
    geometry_msgs
    nav2d_navigator
    nav_msgs
    pluginlib
    roscpp
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    nav2d_navigator
    nav_msgs
    pluginlib
    roscpp
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
