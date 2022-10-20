{
  catkin,
  message_filters,
  roscpp,
  roslaunch,
  rospy,
  ublox_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox_msg_filters";
  pkgFinal = final.noetic.ublox_msg_filters;
  src = srcs.ublox.ublox_msg_filters;

  colconBuildDepends = [
    catkin
    message_filters
    roscpp
    roslaunch
    rospy
    ublox_msgs
  ];

  colconRunDepends = [
    message_filters
    ublox_msgs
  ];

  colconTestDepends = [
  ];
}
