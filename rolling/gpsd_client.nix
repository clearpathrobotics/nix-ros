{
  ament_cmake,
  gps_msgs,
  gpsd,
  pkg-config,
  rclcpp,
  rclcpp_components,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gpsd_client";
  pkgFinal = final.rolling.gpsd_client;
  src = srcs.gps_umd.gpsd_client;

  colconBuildDepends = [
    ament_cmake
    gps_msgs
    gpsd
    pkg-config
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconRunDepends = [
    gps_msgs
    gpsd
    pkg-config
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
