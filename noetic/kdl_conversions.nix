{
  catkin,
  geometry_msgs,
  orocos-kdl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kdl_conversions";
  pkgFinal = final.noetic.kdl_conversions;
  src = srcs.geometry.kdl_conversions;

  colconBuildDepends = [
    catkin
    geometry_msgs
    orocos-kdl
  ];

  colconRunDepends = [
    geometry_msgs
    orocos-kdl
  ];

  colconTestDepends = [
  ];
}
