{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  boost,
  camera_calibration_parsers,
  cv_bridge,
  image_transport,
  message_filters,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  std_srvs,
  stereo_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_view";
  pkgFinal = final.rolling.image_view;
  src = srcs.image_pipeline.image_view;

  colconBuildDepends = [
    ament_cmake_auto
    boost
    camera_calibration_parsers
    cv_bridge
    image_transport
    message_filters
    rclcpp
    rclcpp_components
    sensor_msgs
    std_srvs
    stereo_msgs
  ];

  colconRunDepends = [
    boost
    camera_calibration_parsers
    cv_bridge
    image_transport
    message_filters
    rclcpp
    rclcpp_components
    sensor_msgs
    std_srvs
    stereo_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
