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
  name = "clober_msgs";
  pkgFinal = final.noetic.clober_msgs;
  src = srcs.clober_msgs.clober_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    message_runtime
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
