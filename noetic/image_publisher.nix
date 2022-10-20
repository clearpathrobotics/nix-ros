{
  camera_info_manager,
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  image_transport,
  nodelet,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_publisher";
  pkgFinal = final.noetic.image_publisher;
  src = srcs.image_pipeline.image_publisher;

  colconBuildDepends = [
    camera_info_manager
    catkin
    cv_bridge
    dynamic_reconfigure
    image_transport
    nodelet
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    camera_info_manager
    cv_bridge
    dynamic_reconfigure
    image_transport
    nodelet
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
