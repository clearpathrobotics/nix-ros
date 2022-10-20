{
  actionlib,
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "twist_mux_msgs";
  pkgFinal = final.noetic.twist_mux_msgs;
  src = srcs.twist_mux_msgs.twist_mux_msgs;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    message_generation
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    message_runtime
  ];

  colconTestDepends = [
  ];
}
