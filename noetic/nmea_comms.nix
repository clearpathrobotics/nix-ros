{
  catkin,
  nmea_msgs,
  roscpp,
  roslaunch,
  roslint,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nmea_comms";
  pkgFinal = final.noetic.nmea_comms;
  src = srcs.nmea_comms.nmea_comms;

  colconBuildDepends = [
    catkin
    nmea_msgs
    roscpp
    roslaunch
    roslint
    rostest
  ];

  colconRunDepends = [
    nmea_msgs
    roscpp
  ];

  colconTestDepends = [
  ];
}
