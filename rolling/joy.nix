{
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rclcpp_components,
  sdl2_vendor,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joy";
  pkgFinal = final.rolling.joy;
  src = srcs.joystick_drivers.joy;

  colconBuildDepends = [
    ament_cmake_ros
    rclcpp
    rclcpp_components
    sdl2_vendor
    sensor_msgs
  ];

  colconRunDepends = [
    rclcpp
    rclcpp_components
    sdl2_vendor
    sensor_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
