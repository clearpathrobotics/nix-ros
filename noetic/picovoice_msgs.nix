{
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "picovoice_msgs";
  pkgFinal = final.noetic.picovoice_msgs;
  src = srcs.picovoice-ros.picovoice_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    message_generation
  ];

  colconRunDepends = [
    actionlib_msgs
    message_runtime
  ];

  colconTestDepends = [
  ];
}
