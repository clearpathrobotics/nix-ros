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
  name = "p2os_msgs";
  pkgFinal = final.noetic.p2os_msgs;
  src = srcs.p2os.p2os_msgs;

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
