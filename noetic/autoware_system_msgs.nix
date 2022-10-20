{
  catkin,
  message_generation,
  message_runtime,
  rosgraph_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "autoware_system_msgs";
  pkgFinal = final.noetic.autoware_system_msgs;
  src = srcs.autoware_msgs.autoware_system_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    rosgraph_msgs
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    rosgraph_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
