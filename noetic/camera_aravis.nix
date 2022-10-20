{
  aravis,
  camera_info_manager,
  catkin,
  dynamic_reconfigure,
  glib,
  image_transport,
  message_generation,
  message_runtime,
  nodelet,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "camera_aravis";
  pkgFinal = final.noetic.camera_aravis;
  src = srcs.camera_aravis.camera_aravis;

  colconBuildDepends = [
    aravis
    camera_info_manager
    catkin
    dynamic_reconfigure
    glib
    image_transport
    message_generation
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    tf
    tf2_ros
  ];

  colconRunDepends = [
    aravis
    camera_info_manager
    dynamic_reconfigure
    image_transport
    message_runtime
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    tf
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
