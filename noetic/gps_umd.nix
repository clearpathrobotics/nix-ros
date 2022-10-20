{
  catkin,
  gps_common,
  gpsd_client,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gps_umd";
  pkgFinal = final.noetic.gps_umd;
  src = srcs.gps_umd.gps_umd;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gps_common
    gpsd_client
  ];

  colconTestDepends = [
  ];
}
