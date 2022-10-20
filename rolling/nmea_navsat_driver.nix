{
  geometry_msgs,
  nmea_msgs,
  python3Packages,
  rclpy,
  sensor_msgs,
  tf_transformations,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nmea_navsat_driver";
  pkgFinal = final.rolling.nmea_navsat_driver;
  src = srcs.nmea_navsat_driver.nmea_navsat_driver;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    geometry_msgs
    nmea_msgs
    python3Packages.numpy
    python3Packages.pyserial
    rclpy
    sensor_msgs
    tf_transformations
  ];

  colconTestDepends = [
    python3Packages.pytest
  ];
}
