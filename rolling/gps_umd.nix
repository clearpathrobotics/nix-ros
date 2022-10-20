{
  ament_cmake,
  gps_msgs,
  gps_tools,
  gpsd_client,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gps_umd";
  pkgFinal = final.rolling.gps_umd;
  src = srcs.gps_umd.gps_umd;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    gps_msgs
    gps_tools
    gpsd_client
  ];

  colconTestDepends = [
  ];
}
