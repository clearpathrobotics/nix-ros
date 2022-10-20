{
  actionlib,
  actionlib_msgs,
  alsaOss,
  catkin,
  cob_srvs,
  diagnostic_msgs,
  message_generation,
  message_runtime,
  roscpp,
  rospy,
  std_msgs,
  std_srvs,
  visualization_msgs,
  vlc,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_sound";
  pkgFinal = final.noetic.cob_sound;
  src = srcs.cob_driver.cob_sound;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    cob_srvs
    diagnostic_msgs
    message_generation
    roscpp
    std_msgs
    std_srvs
    visualization_msgs
    vlc
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    alsaOss
    cob_srvs
    diagnostic_msgs
    message_runtime
    roscpp
    rospy
    std_msgs
    std_srvs
    visualization_msgs
    vlc
  ];

  colconTestDepends = [
  ];
}
