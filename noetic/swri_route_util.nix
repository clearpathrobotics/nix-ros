{
  boost,
  catkin,
  marti_common_msgs,
  marti_nav_msgs,
  roscpp,
  swri_geometry_util,
  swri_math_util,
  swri_transform_util,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_route_util";
  pkgFinal = final.noetic.swri_route_util;
  src = srcs.marti_common.swri_route_util;

  colconBuildDepends = [
    boost
    catkin
    marti_common_msgs
    marti_nav_msgs
    roscpp
    swri_geometry_util
    swri_math_util
    swri_transform_util
    visualization_msgs
  ];

  colconRunDepends = [
    boost
    marti_common_msgs
    marti_nav_msgs
    roscpp
    swri_geometry_util
    swri_math_util
    swri_transform_util
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
