{
  ament_cmake_auto,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  asio,
  asio_cmake_module,
  rclcpp,
  std_msgs,
  udp_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "io_context";
  pkgFinal = final.rolling.io_context;
  src = srcs.transport_drivers.io_context;

  colconBuildDepends = [
    ament_cmake_auto
    asio
    asio_cmake_module
    rclcpp
    std_msgs
    udp_msgs
  ];

  colconRunDepends = [
    asio
    rclcpp
    std_msgs
    udp_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
