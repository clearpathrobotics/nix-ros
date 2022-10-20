{
  catkin,
  message_filters,
  message_generation,
  message_runtime,
  nav_msgs,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gps_common";
  pkgFinal = final.noetic.gps_common;
  src = srcs.gps_umd.gps_common;

  colconBuildDepends = [
    catkin
    message_filters
    message_generation
    nav_msgs
    roscpp
    rospy
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    message_filters
    message_runtime
    nav_msgs
    roscpp
    rospy
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
