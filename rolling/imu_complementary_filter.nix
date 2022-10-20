{
  ament_cmake,
  geometry_msgs,
  message_filters,
  rclcpp,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "imu_complementary_filter";
  pkgFinal = final.rolling.imu_complementary_filter;
  src = srcs.imu_tools.imu_complementary_filter;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    message_filters
    rclcpp
    sensor_msgs
    std_msgs
    tf2
    tf2_ros
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
