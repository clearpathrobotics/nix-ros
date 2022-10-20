{
  catkin,
  costmap_2d,
  geometry_msgs,
  mbf_abstract_core,
  mbf_utility,
  nav_core,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mbf_costmap_core";
  pkgFinal = final.noetic.mbf_costmap_core;
  src = srcs.move_base_flex.mbf_costmap_core;

  colconBuildDepends = [
    catkin
    costmap_2d
    geometry_msgs
    mbf_abstract_core
    mbf_utility
    nav_core
    std_msgs
    tf
  ];

  colconRunDepends = [
    costmap_2d
    geometry_msgs
    mbf_abstract_core
    mbf_utility
    nav_core
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
