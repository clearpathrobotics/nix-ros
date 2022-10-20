{
  catkin,
  mbf_abstract_core,
  mbf_abstract_nav,
  mbf_costmap_core,
  mbf_costmap_nav,
  mbf_msgs,
  mbf_simple_nav,
  mbf_utility,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "move_base_flex";
  pkgFinal = final.noetic.move_base_flex;
  src = srcs.move_base_flex.move_base_flex;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    mbf_abstract_core
    mbf_abstract_nav
    mbf_costmap_core
    mbf_costmap_nav
    mbf_msgs
    mbf_simple_nav
    mbf_utility
  ];

  colconTestDepends = [
  ];
}
