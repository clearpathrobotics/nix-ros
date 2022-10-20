{
  angles,
  base_local_planner,
  catkin,
  cmake_modules,
  costmap_2d,
  eigen,
  geometry_msgs,
  nav_core,
  pluginlib,
  roscpp,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rotate_recovery";
  pkgFinal = final.noetic.rotate_recovery;
  src = srcs.navigation.rotate_recovery;

  colconBuildDepends = [
    angles
    base_local_planner
    catkin
    cmake_modules
    costmap_2d
    eigen
    geometry_msgs
    nav_core
    pluginlib
    roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    costmap_2d
    eigen
    geometry_msgs
    nav_core
    pluginlib
    roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
