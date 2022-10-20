{
  autoware_config_msgs,
  catkin,
  gtest,
  libyamlcpp,
  message_filters,
  opencv,
  pcl_conversions,
  pcl_ros,
  roscpp,
  roslint,
  rostest,
  sensor_msgs,
  tf,
  tf2,
  tf2_eigen,
  tf2_ros,
  velodyne_pcl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "points_preprocessor";
  pkgFinal = final.noetic.points_preprocessor;
  src = srcs.core_perception.points_preprocessor;

  colconBuildDepends = [
    autoware_config_msgs
    catkin
    gtest
    libyamlcpp
    message_filters
    opencv
    pcl_conversions
    pcl_ros
    roscpp
    roslint
    rostest
    sensor_msgs
    tf
    tf2
    tf2_eigen
    tf2_ros
    velodyne_pcl
  ];

  colconRunDepends = [
    autoware_config_msgs
    gtest
    libyamlcpp
    message_filters
    opencv
    pcl_conversions
    pcl_ros
    roscpp
    roslint
    rostest
    sensor_msgs
    tf
    tf2
    tf2_eigen
    tf2_ros
    velodyne_pcl
  ];

  colconTestDepends = [
  ];
}
