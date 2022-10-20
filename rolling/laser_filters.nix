{
  ament_cmake_auto,
  ament_cmake_gtest,
  angles,
  filters,
  laser_geometry,
  message_filters,
  pluginlib,
  rclcpp,
  rclcpp_lifecycle,
  sensor_msgs,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_filters";
  pkgFinal = final.rolling.laser_filters;
  src = srcs.laser_filters.laser_filters;

  colconBuildDepends = [
    ament_cmake_auto
    angles
    filters
    laser_geometry
    message_filters
    pluginlib
    rclcpp
    rclcpp_lifecycle
    sensor_msgs
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    angles
    filters
    laser_geometry
    message_filters
    pluginlib
    rclcpp
    rclcpp_lifecycle
    sensor_msgs
    tf2
    tf2_ros
  ];

  colconTestDepends = [
    ament_cmake_gtest
  ];
}
