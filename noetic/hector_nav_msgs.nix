{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_nav_msgs";
  pkgFinal = final.noetic.hector_nav_msgs;
  src = srcs.hector_slam.hector_nav_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    nav_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    nav_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
