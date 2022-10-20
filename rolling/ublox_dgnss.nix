{
  ament_cmake,
  ublox_dgnss_node,
  ublox_ubx_interfaces,
  ublox_ubx_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox_dgnss";
  pkgFinal = final.rolling.ublox_dgnss;
  src = srcs.ublox_dgnss.ublox_dgnss;

  colconBuildDepends = [
    ament_cmake
    ublox_dgnss_node
    ublox_ubx_interfaces
    ublox_ubx_msgs
  ];

  colconRunDepends = [
    ublox_dgnss_node
    ublox_ubx_interfaces
    ublox_ubx_msgs
  ];

  colconTestDepends = [
  ];
}
