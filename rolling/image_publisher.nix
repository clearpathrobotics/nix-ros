{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  camera_info_manager,
  cv_bridge,
  image_transport,
  rcl_interfaces,
  rclcpp,
  rclcpp_components,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_publisher";
  pkgFinal = final.rolling.image_publisher;
  src = srcs.image_pipeline.image_publisher;

  colconBuildDepends = [
    ament_cmake_auto
    camera_info_manager
    cv_bridge
    image_transport
    rcl_interfaces
    rclcpp
    rclcpp_components
  ];

  colconRunDepends = [
    camera_info_manager
    cv_bridge
    image_transport
    rcl_interfaces
    rclcpp
    rclcpp_components
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
