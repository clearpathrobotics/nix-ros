{
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  dynamic_reconfigure,
  message_generation,
  message_runtime,
  roscpp,
  rospy,
  rostest,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_network_tools";
  pkgFinal = final.noetic.jsk_network_tools;
  src = srcs.jsk_common.jsk_network_tools;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    message_generation
    roscpp
    rospy
    rostest
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    diagnostic_msgs
    diagnostic_updater
    dynamic_reconfigure
    message_runtime
    roscpp
    rospy
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
