{
  catkin,
  color_util,
  geometry_msgs,
  nav_2d_msgs,
  nav_2d_utils,
  nav_core2,
  nav_grid,
  nav_grid_iterators,
  nav_grid_pub_sub,
  nav_msgs,
  pluginlib,
  qt5,
  roscpp,
  roslint,
  rviz,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_nav_rviz_plugins";
  pkgFinal = final.noetic.robot_nav_rviz_plugins;
  src = srcs.robot_navigation.robot_nav_rviz_plugins;

  colconBuildDepends = [
    catkin
    color_util
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_grid
    nav_grid_iterators
    nav_grid_pub_sub
    nav_msgs
    pluginlib
    qt5.qtbase
    roscpp
    rviz
    std_msgs
  ];

  colconRunDepends = [
    color_util
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_grid
    nav_grid_iterators
    nav_grid_pub_sub
    nav_msgs
    pluginlib
    qt5.qtbase
    roscpp
    rviz
    std_msgs
  ];

  colconTestDepends = [
    roslint
  ];
}
