{
  ament_cmake,
  ament_cmake_copyright,
  ament_cmake_cppcheck,
  ament_lint_auto,
  ament_lint_common,
  libusb1,
  pkg-config,
  rclcpp,
  rclcpp_components,
  std_msgs,
  ublox_ubx_interfaces,
  ublox_ubx_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox_dgnss_node";
  pkgFinal = final.rolling.ublox_dgnss_node;
  src = srcs.ublox_dgnss.ublox_dgnss_node;

  colconBuildDepends = [
    ament_cmake
    libusb1
    pkg-config
    rclcpp
    rclcpp_components
    ublox_ubx_interfaces
    ublox_ubx_msgs
  ];

  colconRunDepends = [
    libusb1
    rclcpp
    rclcpp_components
    std_msgs
    ublox_ubx_interfaces
    ublox_ubx_msgs
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_cppcheck
    ament_lint_auto
    ament_lint_common
  ];
}
