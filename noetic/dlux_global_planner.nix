{
  catkin,
  geometry_msgs,
  nav_2d_msgs,
  nav_2d_utils,
  nav_core2,
  nav_grid,
  nav_grid_pub_sub,
  nav_msgs,
  pluginlib,
  roscpp,
  roslint,
  rostest,
  rosunit,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dlux_global_planner";
  pkgFinal = final.noetic.dlux_global_planner;
  src = srcs.robot_navigation.dlux_global_planner;

  colconBuildDepends = [
    catkin
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_grid
    nav_grid_pub_sub
    nav_msgs
    pluginlib
    roscpp
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_grid
    nav_grid_pub_sub
    nav_msgs
    pluginlib
    roscpp
    visualization_msgs
  ];

  colconTestDepends = [
    roslint
    rostest
    rosunit
  ];
}
