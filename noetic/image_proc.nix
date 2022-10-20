{
  boost,
  camera_calibration_parsers,
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  image_geometry,
  image_transport,
  nodelet,
  nodelet_topic_tools,
  roscpp,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_proc";
  pkgFinal = final.noetic.image_proc;
  src = srcs.image_pipeline.image_proc;

  colconBuildDepends = [
    boost
    catkin
    cv_bridge
    dynamic_reconfigure
    image_geometry
    image_transport
    nodelet
    nodelet_topic_tools
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    image_geometry
    image_transport
    nodelet
    nodelet_topic_tools
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    camera_calibration_parsers
    rostest
  ];
}
