{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_2d_msgs,
  nav_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dwb_msgs";
  pkgFinal = final.noetic.dwb_msgs;
  src = srcs.robot_navigation.dwb_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    nav_2d_msgs
    nav_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    nav_2d_msgs
    nav_msgs
  ];

  colconTestDepends = [
  ];
}
