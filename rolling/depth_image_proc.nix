{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  class_loader,
  cv_bridge,
  image_geometry,
  image_transport,
  message_filters,
  opencv,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  stereo_msgs,
  tf2,
  tf2_eigen,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "depth_image_proc";
  pkgFinal = final.rolling.depth_image_proc;
  src = srcs.image_pipeline.depth_image_proc;

  colconBuildDepends = [
    ament_cmake_auto
    class_loader
    cv_bridge
    image_geometry
    image_transport
    message_filters
    opencv
    rclcpp
    rclcpp_components
    sensor_msgs
    stereo_msgs
    tf2
    tf2_eigen
    tf2_ros
  ];

  colconRunDepends = [
    cv_bridge
    image_geometry
    image_transport
    message_filters
    opencv
    rclcpp
    rclcpp_components
    sensor_msgs
    stereo_msgs
    tf2
    tf2_eigen
    tf2_ros
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
