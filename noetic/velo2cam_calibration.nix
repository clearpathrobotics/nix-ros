{
  catkin,
  cmake_modules,
  cv_bridge,
  dynamic_reconfigure,
  image_geometry,
  image_transport,
  message_filters,
  pcl_ros,
  roscpp,
  sensor_msgs,
  std_msgs,
  stereo_msgs,
  tf,
  tf_conversions,
  tinyxml,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velo2cam_calibration";
  pkgFinal = final.noetic.velo2cam_calibration;
  src = srcs.velo2cam_calibration.velo2cam_calibration;

  colconBuildDepends = [
    catkin
    cmake_modules
    cv_bridge
    dynamic_reconfigure
    image_geometry
    image_transport
    message_filters
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    stereo_msgs
    tf
    tf_conversions
    tinyxml
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    image_geometry
    image_transport
    message_filters
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    stereo_msgs
    tf
    tf_conversions
    tinyxml
  ];

  colconTestDepends = [
  ];
}
