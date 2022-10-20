{
  catkin,
  costmap_2d,
  geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gpp_interface";
  pkgFinal = final.noetic.gpp_interface;
  src = srcs.gpp.gpp_interface;

  colconBuildDepends = [
    catkin
    costmap_2d
    geometry_msgs
  ];

  colconRunDepends = [
    costmap_2d
    geometry_msgs
  ];

  colconTestDepends = [
  ];
}
