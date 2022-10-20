{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav_msgs";
  pkgFinal = final.noetic.nav_msgs;
  src = srcs.common_msgs.nav_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
