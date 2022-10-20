{
  ament_cmake_ros,
  asio,
  diagnostic_msgs,
  diagnostic_updater,
  geometry_msgs,
  rcl_interfaces,
  rclcpp,
  rclcpp_components,
  rtcm_msgs,
  sensor_msgs,
  std_msgs,
  tf2,
  ublox_msgs,
  ublox_serialization,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox_gps";
  pkgFinal = final.rolling.ublox_gps;
  src = srcs.ublox.ublox_gps;

  colconBuildDepends = [
    ament_cmake_ros
    asio
    diagnostic_msgs
    diagnostic_updater
    geometry_msgs
    rcl_interfaces
    rclcpp
    rclcpp_components
    rtcm_msgs
    sensor_msgs
    std_msgs
    tf2
    ublox_msgs
    ublox_serialization
  ];

  colconRunDepends = [
    asio
    diagnostic_msgs
    diagnostic_updater
    geometry_msgs
    rcl_interfaces
    rclcpp
    rclcpp_components
    rtcm_msgs
    sensor_msgs
    std_msgs
    tf2
    ublox_msgs
    ublox_serialization
  ];

  colconTestDepends = [
  ];
}
