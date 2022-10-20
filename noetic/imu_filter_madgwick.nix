{
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  message_filters,
  nodelet,
  pluginlib,
  roscpp,
  rosunit,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "imu_filter_madgwick";
  pkgFinal = final.noetic.imu_filter_madgwick;
  src = srcs.imu_tools.imu_filter_madgwick;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    geometry_msgs
    message_filters
    nodelet
    pluginlib
    roscpp
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    dynamic_reconfigure
    geometry_msgs
    message_filters
    nodelet
    pluginlib
    roscpp
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    rosunit
  ];
}
