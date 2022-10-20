{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  diagnostic_msgs,
  diagnostic_updater,
  rclcpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joy_linux";
  pkgFinal = final.rolling.joy_linux;
  src = srcs.joystick_drivers.joy_linux;

  colconBuildDepends = [
    ament_cmake
    diagnostic_msgs
    diagnostic_updater
    rclcpp
    sensor_msgs
  ];

  colconRunDepends = [
    diagnostic_msgs
    diagnostic_updater
    rclcpp
    sensor_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
