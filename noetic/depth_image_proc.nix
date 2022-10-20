{
  boost,
  catkin,
  cmake_modules,
  cv_bridge,
  eigen_conversions,
  image_geometry,
  image_transport,
  message_filters,
  nodelet,
  rostest,
  sensor_msgs,
  stereo_msgs,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "depth_image_proc";
  pkgFinal = final.noetic.depth_image_proc;
  src = srcs.image_pipeline.depth_image_proc;

  colconBuildDepends = [
    boost
    catkin
    cmake_modules
    cv_bridge
    eigen_conversions
    image_geometry
    image_transport
    message_filters
    nodelet
    sensor_msgs
    stereo_msgs
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    boost
    cv_bridge
    eigen_conversions
    image_geometry
    image_transport
    nodelet
    sensor_msgs
    tf2
    tf2_ros
  ];

  colconTestDepends = [
    rostest
  ];
}
