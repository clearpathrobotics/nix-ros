{
  catkin,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "actionlib_msgs";
  pkgFinal = final.noetic.actionlib_msgs;
  src = srcs.common_msgs.actionlib_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    message_generation
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
