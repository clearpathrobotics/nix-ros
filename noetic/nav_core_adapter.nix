{
  catkin,
  costmap_2d,
  dwb_critics,
  dwb_local_planner,
  dwb_plugins,
  geometry_msgs,
  nav_2d_msgs,
  nav_2d_utils,
  nav_core,
  nav_core2,
  nav_grid,
  nav_msgs,
  pluginlib,
  roslint,
  rostest,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav_core_adapter";
  pkgFinal = final.noetic.nav_core_adapter;
  src = srcs.robot_navigation.nav_core_adapter;

  colconBuildDepends = [
    catkin
    costmap_2d
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core
    nav_core2
    nav_grid
    nav_msgs
    pluginlib
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    costmap_2d
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core
    nav_core2
    nav_grid
    nav_msgs
    pluginlib
    tf
    visualization_msgs
  ];

  colconTestDepends = [
    dwb_critics
    dwb_local_planner
    dwb_plugins
    roslint
    rostest
  ];
}
