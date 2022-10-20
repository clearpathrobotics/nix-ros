{
  catkin,
  cob_perception_msgs,
  cv_bridge,
  geometry_msgs,
  image_transport,
  nodelet,
  pcl_conversions,
  pcl_ros,
  pluginlib,
  roscpp,
  sensor_msgs,
  stereo_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_image_flip";
  pkgFinal = final.noetic.cob_image_flip;
  src = srcs.cob_perception_common.cob_image_flip;

  colconBuildDepends = [
    catkin
    cob_perception_msgs
    cv_bridge
    geometry_msgs
    image_transport
    nodelet
    pcl_conversions
    pcl_ros
    pluginlib
    roscpp
    sensor_msgs
    stereo_msgs
    tf
  ];

  colconRunDepends = [
    cob_perception_msgs
    cv_bridge
    geometry_msgs
    image_transport
    nodelet
    pcl_conversions
    pcl_ros
    pluginlib
    roscpp
    sensor_msgs
    stereo_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
