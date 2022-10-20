{
  can_msgs,
  catkin,
  dataspeed_can_msg_filters,
  dataspeed_can_usb,
  dataspeed_ulc_can,
  dbw_mkz_description,
  dbw_mkz_msgs,
  geometry_msgs,
  nodelet,
  roscpp,
  roslaunch,
  rospy,
  sensor_msgs,
  socketcan_bridge,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dbw_mkz_can";
  pkgFinal = final.noetic.dbw_mkz_can;
  src = srcs.dbw_mkz_ros.dbw_mkz_can;

  colconBuildDepends = [
    can_msgs
    catkin
    dataspeed_can_msg_filters
    dbw_mkz_msgs
    geometry_msgs
    nodelet
    roscpp
    rospy
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    can_msgs
    dataspeed_can_usb
    dataspeed_ulc_can
    dbw_mkz_description
    dbw_mkz_msgs
    geometry_msgs
    nodelet
    roscpp
    roslaunch
    rospy
    sensor_msgs
    socketcan_bridge
    std_msgs
  ];

  colconTestDepends = [
    roslaunch
  ];
}
