{
  ament_cmake_auto,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  asio,
  asio_cmake_module,
  io_context,
  rclcpp,
  rclcpp_components,
  rclcpp_lifecycle,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "serial_driver";
  pkgFinal = final.rolling.serial_driver;
  src = srcs.transport_drivers.serial_driver;

  colconBuildDepends = [
    ament_cmake_auto
    asio
    asio_cmake_module
    io_context
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
    std_msgs
  ];

  colconRunDepends = [
    asio
    io_context
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
    std_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
