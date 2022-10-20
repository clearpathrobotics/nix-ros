{
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  image_geometry,
  image_proc,
  image_transport,
  message_filters,
  nodelet,
  rostest,
  sensor_msgs,
  stereo_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "stereo_image_proc";
  pkgFinal = final.noetic.stereo_image_proc;
  src = srcs.image_pipeline.stereo_image_proc;

  colconBuildDepends = [
    catkin
    cv_bridge
    dynamic_reconfigure
    image_geometry
    image_proc
    image_transport
    message_filters
    nodelet
    sensor_msgs
    stereo_msgs
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    image_geometry
    image_proc
    image_transport
    message_filters
    nodelet
    sensor_msgs
    stereo_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
