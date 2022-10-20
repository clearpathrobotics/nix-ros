{
  actionlib,
  actionlib_msgs,
  boost,
  catkin,
  diagnostic_msgs,
  message_generation,
  message_runtime,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_light";
  pkgFinal = final.noetic.cob_light;
  src = srcs.cob_driver.cob_light;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    boost
    catkin
    diagnostic_msgs
    message_generation
    roscpp
    sensor_msgs
    std_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    boost
    diagnostic_msgs
    message_runtime
    roscpp
    rospy
    sensor_msgs
    std_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
