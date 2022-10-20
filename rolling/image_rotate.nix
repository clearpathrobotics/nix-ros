{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  class_loader,
  cv_bridge,
  geometry_msgs,
  image_transport,
  opencv,
  rcl_interfaces,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_rotate";
  pkgFinal = final.rolling.image_rotate;
  src = srcs.image_pipeline.image_rotate;

  colconBuildDepends = [
    ament_cmake_auto
    class_loader
    cv_bridge
    geometry_msgs
    image_transport
    opencv
    rcl_interfaces
    rclcpp
    rclcpp_components
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    cv_bridge
    geometry_msgs
    image_transport
    opencv
    rcl_interfaces
    rclcpp
    rclcpp_components
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
