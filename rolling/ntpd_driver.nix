{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  poco,
  rclcpp,
  rclcpp_components,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ntpd_driver";
  pkgFinal = final.rolling.ntpd_driver;
  src = srcs.ntpd_driver.ntpd_driver;

  colconBuildDepends = [
    ament_cmake
    poco
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconRunDepends = [
    poco
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
