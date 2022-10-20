{
  catkin,
  cmake_modules,
  costmap_2d,
  geometry_msgs,
  nav_core,
  pluginlib,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "move_slow_and_clear";
  pkgFinal = final.noetic.move_slow_and_clear;
  src = srcs.navigation.move_slow_and_clear;

  colconBuildDepends = [
    catkin
    cmake_modules
    costmap_2d
    geometry_msgs
    nav_core
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    costmap_2d
    geometry_msgs
    nav_core
    pluginlib
    roscpp
  ];

  colconTestDepends = [
  ];
}
