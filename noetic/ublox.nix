{
  catkin,
  ublox_gps,
  ublox_msg_filters,
  ublox_msgs,
  ublox_serialization,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox";
  pkgFinal = final.noetic.ublox;
  src = srcs.ublox.ublox;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ublox_gps
    ublox_msg_filters
    ublox_msgs
    ublox_serialization
  ];

  colconTestDepends = [
  ];
}
