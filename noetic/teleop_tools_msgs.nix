{
  actionlib_msgs,
  catkin,
  control_msgs,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "teleop_tools_msgs";
  pkgFinal = final.noetic.teleop_tools_msgs;
  src = srcs.teleop_tools.teleop_tools_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    control_msgs
    message_generation
  ];

  colconRunDepends = [
    actionlib_msgs
    control_msgs
    message_runtime
  ];

  colconTestDepends = [
  ];
}
