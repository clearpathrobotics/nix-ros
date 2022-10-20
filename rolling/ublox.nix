{
  ament_cmake,
  ublox_gps,
  ublox_msgs,
  ublox_serialization,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox";
  pkgFinal = final.rolling.ublox;
  src = srcs.ublox.ublox;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ublox_gps
    ublox_msgs
    ublox_serialization
  ];

  colconTestDepends = [
  ];
}
