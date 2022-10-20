{
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_mechanism_msgs";
  pkgFinal = final.noetic.pr2_mechanism_msgs;
  src = srcs.pr2_mechanism_msgs.pr2_mechanism_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
