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
  name = "kobuki_msgs";
  pkgFinal = final.noetic.kobuki_msgs;
  src = srcs.kobuki_msgs.kobuki_msgs;

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
