{
  camera_info_manager,
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  image_proc,
  image_transport,
  message_filters,
  nodelet,
  roscpp,
  sensor_msgs,
  std_msgs,
  stereo_image_proc,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "avt_vimba_camera";
  pkgFinal = final.noetic.avt_vimba_camera;
  src = srcs.avt_vimba_camera.avt_vimba_camera;

  colconBuildDepends = [
    camera_info_manager
    catkin
    diagnostic_updater
    dynamic_reconfigure
    image_transport
    message_filters
    nodelet
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    camera_info_manager
    diagnostic_updater
    dynamic_reconfigure
    image_proc
    image_transport
    message_filters
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    stereo_image_proc
  ];

  colconTestDepends = [
  ];
}
