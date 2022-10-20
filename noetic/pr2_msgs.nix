{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_msgs";
  pkgFinal = final.noetic.pr2_msgs;
  src = srcs.pr2_common.pr2_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
