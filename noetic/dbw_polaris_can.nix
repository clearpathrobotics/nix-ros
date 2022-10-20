{
  can_msgs,
  catkin,
  dataspeed_can_msg_filters,
  dataspeed_can_usb,
  dataspeed_ulc_can,
  dbw_polaris_description,
  dbw_polaris_msgs,
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
  name = "dbw_polaris_can";
  pkgFinal = final.noetic.dbw_polaris_can;
  src = srcs.dbw_polaris_ros.dbw_polaris_can;

  colconBuildDepends = [
    can_msgs
    catkin
    dataspeed_can_msg_filters
    dbw_polaris_msgs
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
    dbw_polaris_description
    dbw_polaris_msgs
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
