{
  boost,
  catkin,
  gps_common,
  nav_msgs,
  nmea_msgs,
  nodelet,
  novatel_oem7_msgs,
  rosbag,
  roscpp,
  rostest,
  sensor_msgs,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "novatel_oem7_driver";
  pkgFinal = final.noetic.novatel_oem7_driver;
  src = srcs.novatel_oem7_driver.novatel_oem7_driver;

  colconBuildDepends = [
    boost
    catkin
    gps_common
    nav_msgs
    nmea_msgs
    nodelet
    novatel_oem7_msgs
    roscpp
    sensor_msgs
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    boost
    gps_common
    nav_msgs
    nmea_msgs
    nodelet
    novatel_oem7_msgs
    roscpp
    sensor_msgs
    tf2_geometry_msgs
  ];

  colconTestDepends = [
    rosbag
    rostest
  ];
}
