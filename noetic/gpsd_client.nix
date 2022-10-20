{
  catkin,
  gps_common,
  gpsd,
  pkg-config,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gpsd_client";
  pkgFinal = final.noetic.gpsd_client;
  src = srcs.gps_umd.gpsd_client;

  colconBuildDepends = [
    catkin
    gps_common
    gpsd
    pkg-config
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
