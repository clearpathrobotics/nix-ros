{
  catkin,
  curlpp,
  dynamic_reconfigure,
  jsoncpp,
  laser_geometry,
  message_generation,
  message_runtime,
  pcl,
  pcl_conversions,
  pcl_ros,
  pf_description,
  roscpp,
  roscpp_serialization,
  roslint,
  rosunit,
  rviz,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pf_driver";
  pkgFinal = final.noetic.pf_driver;
  src = srcs.pf_lidar_ros_driver.pf_driver;

  colconBuildDepends = [
    catkin
    curlpp
    dynamic_reconfigure
    jsoncpp
    laser_geometry
    message_generation
    pcl
    pcl_conversions
    pcl_ros
    roscpp
    roscpp_serialization
    roslint
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    curlpp
    dynamic_reconfigure
    jsoncpp
    laser_geometry
    message_runtime
    pcl
    pcl_conversions
    pcl_ros
    pf_description
    roscpp
    roscpp_serialization
    rviz
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
    rosunit
  ];
}
