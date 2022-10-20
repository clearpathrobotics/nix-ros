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
  name = "tuw_multi_robot_msgs";
  pkgFinal = final.noetic.tuw_multi_robot_msgs;
  src = srcs.tuw_msgs.tuw_multi_robot_msgs;

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
