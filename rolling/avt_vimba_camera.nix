{
  ament_cmake_auto,
  avt_vimba_camera_msgs,
  backward_ros,
  camera_info_manager,
  diagnostic_msgs,
  diagnostic_updater,
  image_proc,
  image_transport,
  message_filters,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  std_msgs,
  std_srvs,
  stereo_image_proc,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "avt_vimba_camera";
  pkgFinal = final.rolling.avt_vimba_camera;
  src = srcs.avt_vimba_camera.avt_vimba_camera;

  colconBuildDepends = [
    ament_cmake_auto
    avt_vimba_camera_msgs
    backward_ros
    camera_info_manager
    diagnostic_msgs
    diagnostic_updater
    image_transport
    message_filters
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    avt_vimba_camera_msgs
    backward_ros
    camera_info_manager
    diagnostic_msgs
    diagnostic_updater
    image_proc
    image_transport
    message_filters
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
    std_srvs
    stereo_image_proc
  ];

  colconTestDepends = [
  ];
}
