{
  catkin,
  map_server,
  nav_2d_utils,
  nav_grid,
  nav_grid_iterators,
  nav_grid_pub_sub,
  nav_msgs,
  opencv,
  roscpp,
  roslib,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav_grid_server";
  pkgFinal = final.noetic.nav_grid_server;
  src = srcs.robot_navigation.nav_grid_server;

  colconBuildDepends = [
    catkin
    nav_2d_utils
    nav_grid
    nav_grid_iterators
    nav_grid_pub_sub
    nav_msgs
    opencv
    roscpp
  ];

  colconRunDepends = [
    nav_2d_utils
    nav_grid
    nav_grid_iterators
    nav_grid_pub_sub
    nav_msgs
    opencv
    roscpp
  ];

  colconTestDepends = [
    map_server
    roslib
    roslint
  ];
}
