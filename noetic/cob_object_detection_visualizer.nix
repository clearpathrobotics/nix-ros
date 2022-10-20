{
  catkin,
  cob_object_detection_msgs,
  cv_bridge,
  eigen_conversions,
  image_transport,
  message_filters,
  pcl_ros,
  roscpp,
  sensor_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_object_detection_visualizer";
  pkgFinal = final.noetic.cob_object_detection_visualizer;
  src = srcs.cob_perception_common.cob_object_detection_visualizer;

  colconBuildDepends = [
    catkin
    cob_object_detection_msgs
    cv_bridge
    eigen_conversions
    image_transport
    message_filters
    pcl_ros
    roscpp
    sensor_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    cob_object_detection_msgs
    cv_bridge
    eigen_conversions
    image_transport
    message_filters
    pcl_ros
    roscpp
    sensor_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
