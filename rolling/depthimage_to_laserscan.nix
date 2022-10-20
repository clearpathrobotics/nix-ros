{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  image_geometry,
  opencv,
  rclcpp,
  rclcpp_components,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "depthimage_to_laserscan";
  pkgFinal = final.rolling.depthimage_to_laserscan;
  src = srcs.depthimage_to_laserscan.depthimage_to_laserscan;

  colconBuildDepends = [
    ament_cmake_ros
    image_geometry
    opencv
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconRunDepends = [
    image_geometry
    opencv
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
