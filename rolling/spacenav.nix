{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  libspnav,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  spacenavd,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "spacenav";
  pkgFinal = final.rolling.spacenav;
  src = srcs.joystick_drivers.spacenav;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    libspnav
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    libspnav
    rclcpp
    rclcpp_components
    sensor_msgs
    spacenavd
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
