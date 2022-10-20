{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  camera_info_manager,
  ffmpeg,
  image_transport,
  image_transport_plugins,
  rclcpp,
  rclcpp_components,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,
  std_srvs,
  v4l-utils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "usb_cam";
  pkgFinal = final.rolling.usb_cam;
  src = srcs.usb_cam.usb_cam;

  colconBuildDepends = [
    ament_cmake_auto
    builtin_interfaces
    camera_info_manager
    ffmpeg
    image_transport
    image_transport_plugins
    rclcpp
    rclcpp_components
    rosidl_default_generators
    sensor_msgs
    std_msgs
    std_srvs
    v4l-utils
  ];

  colconRunDepends = [
    builtin_interfaces
    camera_info_manager
    ffmpeg
    image_transport
    image_transport_plugins
    rclcpp
    rclcpp_components
    rosidl_default_runtime
    sensor_msgs
    std_msgs
    std_srvs
    v4l-utils
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
