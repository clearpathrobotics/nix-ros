{
  catkin,
  geometry_msgs,
  map_msgs,
  nav_2d_msgs,
  nav_2d_utils,
  nav_core2,
  nav_grid,
  nav_grid_iterators,
  nav_msgs,
  roscpp,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav_grid_pub_sub";
  pkgFinal = final.noetic.nav_grid_pub_sub;
  src = srcs.robot_navigation.nav_grid_pub_sub;

  colconBuildDepends = [
    catkin
    geometry_msgs
    map_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_grid
    nav_grid_iterators
    nav_msgs
    roscpp
  ];

  colconRunDepends = [
    geometry_msgs
    map_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_grid
    nav_grid_iterators
    nav_msgs
    roscpp
  ];

  colconTestDepends = [
    roslint
  ];
}
