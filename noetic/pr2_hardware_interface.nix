{
  catkin,
  geometry_msgs,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_hardware_interface";
  pkgFinal = final.noetic.pr2_hardware_interface;
  src = srcs.pr2_mechanism.pr2_hardware_interface;

  colconBuildDepends = [
    catkin
    geometry_msgs
    roscpp
  ];

  colconRunDepends = [
    geometry_msgs
    roscpp
  ];

  colconTestDepends = [
  ];
}
