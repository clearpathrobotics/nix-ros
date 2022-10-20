{
  catkin,
  nav_2d_msgs,
  nav_2d_utils,
  nav_grid,
  nav_msgs,
  roscpp,
  roslint,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav_grid_iterators";
  pkgFinal = final.noetic.nav_grid_iterators;
  src = srcs.robot_navigation.nav_grid_iterators;

  colconBuildDepends = [
    catkin
    nav_2d_msgs
    nav_2d_utils
    nav_grid
    nav_msgs
    roscpp
  ];

  colconRunDepends = [
    nav_2d_msgs
    nav_2d_utils
    nav_grid
    nav_msgs
    roscpp
  ];

  colconTestDepends = [
    roslint
    rosunit
  ];
}
