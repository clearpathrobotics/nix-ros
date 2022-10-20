{
  ament_cmake_auto,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  asio,
  asio_cmake_module,
  io_context,
  lifecycle_msgs,
  rclcpp,
  rclcpp_components,
  rclcpp_lifecycle,
  std_msgs,
  udp_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "udp_driver";
  pkgFinal = final.rolling.udp_driver;
  src = srcs.transport_drivers.udp_driver;

  colconBuildDepends = [
    ament_cmake_auto
    asio
    asio_cmake_module
    io_context
    lifecycle_msgs
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
    std_msgs
    udp_msgs
  ];

  colconRunDepends = [
    asio
    io_context
    lifecycle_msgs
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
    std_msgs
    udp_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
