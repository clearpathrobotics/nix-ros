{
  catkin,
  dynamic_reconfigure,
  eigen,
  geometry_msgs,
  message_filters,
  nodelet,
  nodelet_topic_tools,
  pcl,
  pcl_conversions,
  pcl_msgs,
  pluginlib,
  rosbag,
  rosconsole,
  roscpp,
  roslib,
  rostest,
  sensor_msgs,
  std_msgs,
  tf,
  tf2,
  tf2_eigen,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pcl_ros";
  pkgFinal = final.noetic.pcl_ros;
  src = srcs.perception_pcl.pcl_ros;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    eigen
    geometry_msgs
    message_filters
    nodelet
    nodelet_topic_tools
    pcl
    pcl_conversions
    pcl_msgs
    pluginlib
    rosbag
    rosconsole
    roscpp
    roslib
    sensor_msgs
    std_msgs
    tf
    tf2
    tf2_eigen
    tf2_ros
  ];

  colconRunDepends = [
    dynamic_reconfigure
    eigen
    geometry_msgs
    message_filters
    nodelet
    nodelet_topic_tools
    pcl
    pcl_conversions
    pcl_msgs
    pluginlib
    rosbag
    roscpp
    sensor_msgs
    std_msgs
    tf
    tf2
    tf2_eigen
    tf2_ros
  ];

  colconTestDepends = [
    rostest
  ];
}
