{
  catkin,
  costmap_2d,
  geometry_msgs,
  std_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav_core";
  pkgFinal = final.noetic.nav_core;
  src = srcs.navigation.nav_core;

  colconBuildDepends = [
    catkin
    costmap_2d
    geometry_msgs
    std_msgs
    tf2_ros
  ];

  colconRunDepends = [
    costmap_2d
    geometry_msgs
    std_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
