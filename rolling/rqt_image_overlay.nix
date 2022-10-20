{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  compressed_image_transport,
  image_transport,
  pluginlib,
  qt5,
  rclcpp,
  ros_image_to_qimage,
  rqt_gui_cpp,
  rqt_image_overlay_layer,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_image_overlay";
  pkgFinal = final.rolling.rqt_image_overlay;
  src = srcs.rqt_image_overlay.rqt_image_overlay;

  colconBuildDepends = [
    ament_cmake
    image_transport
    pluginlib
    qt5.qtbase
    rclcpp
    ros_image_to_qimage
    rqt_gui_cpp
    rqt_image_overlay_layer
  ];

  colconRunDepends = [
    image_transport
    pluginlib
    qt5.qtbase
    rclcpp
    ros_image_to_qimage
    rqt_gui_cpp
    rqt_image_overlay_layer
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    compressed_image_transport
    std_msgs
  ];
}
