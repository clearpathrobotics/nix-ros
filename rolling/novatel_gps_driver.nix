{
  ament_cmake,
  ament_cmake_gtest,
  ament_index_cpp,
  ament_lint_auto,
  boost,
  diagnostic_msgs,
  diagnostic_updater,
  gps_msgs,
  libpcap,
  nav_msgs,
  novatel_gps_msgs,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  std_msgs,
  swri_math_util,
  swri_roscpp,
  swri_serial_util,
  tf2,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "novatel_gps_driver";
  pkgFinal = final.rolling.novatel_gps_driver;
  src = srcs.novatel_gps_driver.novatel_gps_driver;

  colconBuildDepends = [
    ament_cmake
    boost
    diagnostic_msgs
    diagnostic_updater
    gps_msgs
    libpcap
    nav_msgs
    novatel_gps_msgs
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
    swri_math_util
    swri_roscpp
    swri_serial_util
    tf2
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    boost
    diagnostic_msgs
    diagnostic_updater
    gps_msgs
    libpcap
    nav_msgs
    novatel_gps_msgs
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
    swri_math_util
    swri_roscpp
    swri_serial_util
    tf2
    tf2_geometry_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_index_cpp
    ament_lint_auto
  ];
}
