{
  catkin,
  message_generation,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosmon_msgs";
  pkgFinal = final.noetic.rosmon_msgs;
  src = srcs.rosmon.rosmon_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    message_generation
    std_msgs
  ];

  colconTestDepends = [
  ];
}
