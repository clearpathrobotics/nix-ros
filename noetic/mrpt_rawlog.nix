{
  catkin,
  dynamic_reconfigure,
  marker_msgs,
  mrpt2,
  mrpt_msgs,
  mrpt_msgs_bridge,
  nav_msgs,
  rosbag,
  roscpp,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_rawlog";
  pkgFinal = final.noetic.mrpt_rawlog;
  src = srcs.mrpt_navigation.mrpt_rawlog;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    marker_msgs
    mrpt2
    mrpt_msgs
    mrpt_msgs_bridge
    nav_msgs
    rosbag
    roscpp
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    dynamic_reconfigure
    marker_msgs
    mrpt2
    mrpt_msgs
    mrpt_msgs_bridge
    nav_msgs
    rosbag
    roscpp
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
