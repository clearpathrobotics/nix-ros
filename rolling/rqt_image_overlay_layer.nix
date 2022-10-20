{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  message_filters,
  pluginlib,
  qt5,
  rclcpp,
  rcpputils,
  rosidl_runtime_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_image_overlay_layer";
  pkgFinal = final.rolling.rqt_image_overlay_layer;
  src = srcs.rqt_image_overlay.rqt_image_overlay_layer;

  colconBuildDepends = [
    ament_cmake
    message_filters
    pluginlib
    qt5.qtbase
    rclcpp
    rcpputils
    rosidl_runtime_cpp
  ];

  colconRunDepends = [
    message_filters
    pluginlib
    qt5.qtbase
    rclcpp
    rcpputils
    rosidl_runtime_cpp
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
