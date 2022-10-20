{
  catkin,
  cmake_modules,
  costmap_2d,
  eigen,
  nav_core,
  pluginlib,
  roscpp,
  rostest,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clear_costmap_recovery";
  pkgFinal = final.noetic.clear_costmap_recovery;
  src = srcs.navigation.clear_costmap_recovery;

  colconBuildDepends = [
    catkin
    cmake_modules
    costmap_2d
    eigen
    nav_core
    pluginlib
    roscpp
    tf2_ros
  ];

  colconRunDepends = [
    costmap_2d
    eigen
    nav_core
    pluginlib
    roscpp
    tf2_ros
  ];

  colconTestDepends = [
    rostest
  ];
}
