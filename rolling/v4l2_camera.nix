{
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  camera_info_manager,
  cv_bridge,
  image_transport,
  rclcpp,
  rclcpp_components,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "v4l2_camera";
  pkgFinal = final.rolling.v4l2_camera;
  src = srcs.v4l2_camera.v4l2_camera;

  colconBuildDepends = [
    ament_cmake_ros
    camera_info_manager
    cv_bridge
    image_transport
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconRunDepends = [
    camera_info_manager
    cv_bridge
    image_transport
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
