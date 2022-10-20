{
  boost,
  catkin,
  cpp_common,
  diagnostic_msgs,
  geographiclib,
  geometry_msgs,
  gps_common,
  libpcap,
  message_generation,
  message_runtime,
  nav_msgs,
  nmea_msgs,
  rosconsole,
  roscpp,
  roscpp_serialization,
  rostime,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "septentrio_gnss_driver";
  pkgFinal = final.noetic.septentrio_gnss_driver;
  src = srcs.septentrio_gnss_driver.septentrio_gnss_driver;

  colconBuildDepends = [
    boost
    catkin
    cpp_common
    diagnostic_msgs
    geographiclib
    geometry_msgs
    gps_common
    libpcap
    message_generation
    nav_msgs
    nmea_msgs
    rosconsole
    roscpp
    roscpp_serialization
    rostime
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    xmlrpcpp
  ];

  colconRunDepends = [
    boost
    cpp_common
    diagnostic_msgs
    geographiclib
    geometry_msgs
    gps_common
    libpcap
    message_runtime
    nav_msgs
    nmea_msgs
    rosconsole
    roscpp
    roscpp_serialization
    rostime
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    xmlrpcpp
  ];

  colconTestDepends = [
  ];
}
