{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  cv_bridge,
  image_geometry,
  image_transport,
  opencv,
  rclcpp,
  rclcpp_components,
  rcutils,
  sensor_msgs,
  tracetools_image_pipeline,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_proc";
  pkgFinal = final.rolling.image_proc;
  src = srcs.image_pipeline.image_proc;

  colconBuildDepends = [
    ament_cmake_auto
    cv_bridge
    image_geometry
    image_transport
    opencv
    rclcpp
    rclcpp_components
    rcutils
    sensor_msgs
    tracetools_image_pipeline
  ];

  colconRunDepends = [
    cv_bridge
    image_geometry
    image_transport
    opencv
    rclcpp
    rclcpp_components
    rcutils
    sensor_msgs
    tracetools_image_pipeline
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
