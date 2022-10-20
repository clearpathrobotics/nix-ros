{
  catkin,
  mavros_msgs,
  nmea_msgs,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ntrip_client";
  pkgFinal = final.noetic.ntrip_client;
  src = srcs.ntrip_client.ntrip_client;

  colconBuildDepends = [
    catkin
    mavros_msgs
    nmea_msgs
    rospy
    std_msgs
  ];

  colconRunDepends = [
    mavros_msgs
    nmea_msgs
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
