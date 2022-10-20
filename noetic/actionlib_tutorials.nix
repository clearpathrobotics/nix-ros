{
  actionlib,
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,
  roscpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "actionlib_tutorials";
  pkgFinal = final.noetic.actionlib_tutorials;
  src = srcs.common_tutorials.actionlib_tutorials;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    message_generation
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    message_runtime
    roscpp
  ];

  colconTestDepends = [
  ];
}
