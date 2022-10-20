{
  catkin,
  geometry_msgs,
  roscpp,
  tf,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mbf_utility";
  pkgFinal = final.noetic.mbf_utility;
  src = srcs.move_base_flex.mbf_utility;

  colconBuildDepends = [
    catkin
    geometry_msgs
    roscpp
    tf
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    roscpp
    tf
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
