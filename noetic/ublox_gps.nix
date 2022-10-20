{
  catkin,
  diagnostic_updater,
  nmea_msgs,
  roscpp,
  roscpp_serialization,
  rtcm_msgs,
  tf,
  ublox_msgs,
  ublox_serialization,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox_gps";
  pkgFinal = final.noetic.ublox_gps;
  src = srcs.ublox.ublox_gps;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    nmea_msgs
    roscpp
    roscpp_serialization
    rtcm_msgs
    tf
    ublox_msgs
    ublox_serialization
  ];

  colconRunDepends = [
    diagnostic_updater
    nmea_msgs
    roscpp
    roscpp_serialization
    rtcm_msgs
    tf
    ublox_msgs
    ublox_serialization
  ];

  colconTestDepends = [
  ];
}
