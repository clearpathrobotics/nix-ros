{
  actionlib,
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_local_controller_msgs";
  pkgFinal = final.noetic.tuw_local_controller_msgs;
  src = srcs.tuw_msgs.tuw_local_controller_msgs;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    nav_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    geometry_msgs
    message_runtime
    nav_msgs
  ];

  colconTestDepends = [
  ];
}
