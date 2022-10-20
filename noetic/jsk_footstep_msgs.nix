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
  name = "jsk_footstep_msgs";
  pkgFinal = final.noetic.jsk_footstep_msgs;
  src = srcs.jsk_common_msgs.jsk_footstep_msgs;

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
