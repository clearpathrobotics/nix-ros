{
  ament_cmake,
  ament_lint_common,
  cv_bridge,
  image_transport,
  libogg,
  libtheora,
  pkg-config,
  pluginlib,
  rclcpp,
  rcutils,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "theora_image_transport";
  pkgFinal = final.rolling.theora_image_transport;
  src = srcs.image_transport_plugins.theora_image_transport;

  colconBuildDepends = [
    ament_cmake
    cv_bridge
    image_transport
    libogg
    libtheora
    pkg-config
    pluginlib
    rclcpp
    rcutils
    rosidl_default_generators
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    cv_bridge
    image_transport
    libogg
    libtheora
    pluginlib
    rclcpp
    rcutils
    rosidl_default_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
