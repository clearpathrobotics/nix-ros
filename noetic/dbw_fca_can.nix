{
  can_msgs,
  catkin,
  dataspeed_can_msg_filters,
  dataspeed_can_usb,
  dataspeed_ulc_can,
  dbw_fca_description,
  dbw_fca_msgs,
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
  name = "dbw_fca_can";
  pkgFinal = final.noetic.dbw_fca_can;
  src = srcs.dbw_fca_ros.dbw_fca_can;

  colconBuildDepends = [
    can_msgs
    catkin
    dataspeed_can_msg_filters
    dbw_fca_msgs
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
    dbw_fca_description
    dbw_fca_msgs
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
