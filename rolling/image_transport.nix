{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  message_filters,
  pluginlib,
  rclcpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_transport";
  pkgFinal = final.rolling.image_transport;
  src = srcs.image_common.image_transport;

  colconBuildDepends = [
    ament_cmake_ros
    message_filters
    pluginlib
    rclcpp
    sensor_msgs
  ];

  colconRunDepends = [
    message_filters
    pluginlib
    rclcpp
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
