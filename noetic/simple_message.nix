{
  catkin,
  industrial_msgs,
  roscpp,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "simple_message";
  pkgFinal = final.noetic.simple_message;
  src = srcs.industrial_core.simple_message;

  colconBuildDepends = [
    catkin
    industrial_msgs
    roscpp
  ];

  colconRunDepends = [
    industrial_msgs
    roscpp
  ];

  colconTestDepends = [
    rosunit
  ];
}
