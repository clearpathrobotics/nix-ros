{
  camera_info_manager,
  catkin,
  dynamic_reconfigure,
  image_transport,
  message_generation,
  message_runtime,
  nodelet,
  openni2,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "openni2_camera";
  pkgFinal = final.noetic.openni2_camera;
  src = srcs.openni2_camera.openni2_camera;

  colconBuildDepends = [
    camera_info_manager
    catkin
    dynamic_reconfigure
    image_transport
    message_generation
    nodelet
    openni2
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    camera_info_manager
    dynamic_reconfigure
    image_transport
    message_runtime
    nodelet
    openni2
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
