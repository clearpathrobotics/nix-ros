{
  boost,
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  gps_common,
  libpcap,
  nav_msgs,
  nodelet,
  novatel_gps_msgs,
  roscpp,
  rostest,
  rosunit,
  sensor_msgs,
  std_msgs,
  swri_math_util,
  swri_nodelet,
  swri_roscpp,
  swri_serial_util,
  swri_string_util,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "novatel_gps_driver";
  pkgFinal = final.noetic.novatel_gps_driver;
  src = srcs.novatel_gps_driver.novatel_gps_driver;

  colconBuildDepends = [
    boost
    catkin
    diagnostic_msgs
    diagnostic_updater
    gps_common
    libpcap
    nav_msgs
    nodelet
    novatel_gps_msgs
    roscpp
    sensor_msgs
    std_msgs
    swri_math_util
    swri_nodelet
    swri_roscpp
    swri_serial_util
    swri_string_util
    tf
  ];

  colconRunDepends = [
    boost
    diagnostic_msgs
    diagnostic_updater
    gps_common
    libpcap
    nav_msgs
    nodelet
    novatel_gps_msgs
    roscpp
    sensor_msgs
    std_msgs
    swri_math_util
    swri_nodelet
    swri_roscpp
    swri_serial_util
    swri_string_util
    tf
  ];

  colconTestDepends = [
    rostest
    rosunit
  ];
}
