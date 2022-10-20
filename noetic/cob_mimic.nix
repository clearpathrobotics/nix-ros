{
  actionlib,
  actionlib_msgs,
  boost,
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  message_generation,
  message_runtime,
  roscpp,
  roslib,
  rospy,
  vlc,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_mimic";
  pkgFinal = final.noetic.cob_mimic;
  src = srcs.cob_driver.cob_mimic;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    boost
    catkin
    diagnostic_msgs
    diagnostic_updater
    message_generation
    roscpp
    roslib
    vlc
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    boost
    diagnostic_msgs
    diagnostic_updater
    message_runtime
    roscpp
    roslib
    rospy
    vlc
  ];

  colconTestDepends = [
  ];
}
