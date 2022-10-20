{
  boost,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  roscpp,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_footprint_observer";
  pkgFinal = final.noetic.cob_footprint_observer;
  src = srcs.cob_control.cob_footprint_observer;

  colconBuildDepends = [
    boost
    catkin
    geometry_msgs
    message_generation
    roscpp
    std_msgs
    tf
  ];

  colconRunDepends = [
    boost
    geometry_msgs
    message_runtime
    roscpp
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
