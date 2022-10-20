{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  camera_calibration_parsers,
  camera_info_manager,
  class_loader,
  cv_bridge,
  gst_all_1,
  image_transport,
  rclcpp,
  rclcpp_components,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gscam";
  pkgFinal = final.rolling.gscam;
  src = srcs.gscam.gscam;

  colconBuildDepends = [
    ament_cmake
    camera_calibration_parsers
    camera_info_manager
    class_loader
    cv_bridge
    gst_all_1.gst-plugins-base
    gst_all_1.gstreamer
    image_transport
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconRunDepends = [
    camera_calibration_parsers
    camera_info_manager
    class_loader
    cv_bridge
    gst_all_1.gst-plugins-base
    gst_all_1.gstreamer
    image_transport
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
