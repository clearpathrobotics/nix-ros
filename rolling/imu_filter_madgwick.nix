{
  ament_cmake,
  ament_cmake_gtest,
  builtin_interfaces,
  geometry_msgs,
  nav_msgs,
  rclcpp,
  rclcpp_action,
  rclcpp_lifecycle,
  sensor_msgs,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "imu_filter_madgwick";
  pkgFinal = final.rolling.imu_filter_madgwick;
  src = srcs.imu_tools.imu_filter_madgwick;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    nav_msgs
    rclcpp
    rclcpp_action
    rclcpp_lifecycle
    sensor_msgs
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    nav_msgs
    rclcpp
    rclcpp_action
    rclcpp_lifecycle
    sensor_msgs
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
  ];
}
