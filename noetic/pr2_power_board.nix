{
  boost,
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  log4cxx,
  message_generation,
  message_runtime,
  pr2_msgs,
  roscpp,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_power_board";
  pkgFinal = final.noetic.pr2_power_board;
  src = srcs.pr2_power_drivers.pr2_power_board;

  colconBuildDepends = [
    boost
    catkin
    diagnostic_msgs
    diagnostic_updater
    log4cxx
    message_generation
    pr2_msgs
    roscpp
  ];

  colconRunDepends = [
    diagnostic_msgs
    diagnostic_updater
    log4cxx
    message_runtime
    pr2_msgs
    roscpp
    rospy
  ];

  colconTestDepends = [
  ];
}
