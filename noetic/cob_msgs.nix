{
  catkin,
  diagnostic_msgs,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_msgs";
  pkgFinal = final.noetic.cob_msgs;
  src = srcs.cob_common.cob_msgs;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    diagnostic_msgs
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
