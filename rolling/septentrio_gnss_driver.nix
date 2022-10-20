{
  ament_cmake,
  boost,
  diagnostic_msgs,
  geographiclib,
  geometry_msgs,
  gps_msgs,
  libpcap,
  nav_msgs,
  nmea_msgs,
  rclcpp,
  rclcpp_components,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "septentrio_gnss_driver";
  pkgFinal = final.rolling.septentrio_gnss_driver;
  src = srcs.septentrio_gnss_driver.septentrio_gnss_driver;

  colconBuildDepends = [
    ament_cmake
    boost
    diagnostic_msgs
    geographiclib
    geometry_msgs
    gps_msgs
    libpcap
    nav_msgs
    nmea_msgs
    rclcpp
    rclcpp_components
    rosidl_default_generators
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    boost
    diagnostic_msgs
    geographiclib
    geometry_msgs
    gps_msgs
    libpcap
    nav_msgs
    nmea_msgs
    rclcpp
    rclcpp_components
    rosidl_default_runtime
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
