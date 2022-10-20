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
  name = "plotjuggler_msgs";
  pkgFinal = final.noetic.plotjuggler_msgs;
  src = srcs.plotjuggler_msgs.plotjuggler_msgs;

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
