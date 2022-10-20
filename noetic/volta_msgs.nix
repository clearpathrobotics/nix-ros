{
  catkin,
  message_generation,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "volta_msgs";
  pkgFinal = final.noetic.volta_msgs;
  src = srcs.volta.volta_msgs;

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
