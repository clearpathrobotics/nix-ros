{
  actionlib,
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
  name = "rm_msgs";
  pkgFinal = final.noetic.rm_msgs;
  src = srcs.rm_control.rm_msgs;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    geometry_msgs
    message_generation
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
