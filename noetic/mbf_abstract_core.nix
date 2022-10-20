{
  catkin,
  geometry_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mbf_abstract_core";
  pkgFinal = final.noetic.mbf_abstract_core;
  src = srcs.move_base_flex.mbf_abstract_core;

  colconBuildDepends = [
    catkin
    geometry_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
