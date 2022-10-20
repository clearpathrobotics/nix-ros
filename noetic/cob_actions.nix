{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_actions";
  pkgFinal = final.noetic.cob_actions;
  src = srcs.cob_common.cob_actions;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_runtime
  ];

  colconTestDepends = [
  ];
}
