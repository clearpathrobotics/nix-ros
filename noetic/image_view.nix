{
  camera_calibration_parsers,
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  image_transport,
  message_filters,
  message_generation,
  nodelet,
  rosconsole,
  roscpp,
  rostest,
  sensor_msgs,
  std_srvs,
  stereo_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_view";
  pkgFinal = final.noetic.image_view;
  src = srcs.image_pipeline.image_view;

  colconBuildDepends = [
    camera_calibration_parsers
    catkin
    cv_bridge
    dynamic_reconfigure
    image_transport
    message_filters
    message_generation
    nodelet
    rosconsole
    roscpp
    sensor_msgs
    std_srvs
    stereo_msgs
  ];

  colconRunDepends = [
    camera_calibration_parsers
    cv_bridge
    dynamic_reconfigure
    image_transport
    message_filters
    nodelet
    rosconsole
    roscpp
    std_srvs
  ];

  colconTestDepends = [
    rostest
  ];
}
