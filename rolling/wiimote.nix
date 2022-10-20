{
  ament_cmake,
  ament_cmake_auto,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  bluez,
  cwiid,
  geometry_msgs,
  rclcpp,
  rclcpp_components,
  rclcpp_lifecycle,
  sensor_msgs,
  std_msgs,
  std_srvs,
  wiimote_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "wiimote";
  pkgFinal = final.rolling.wiimote;
  src = srcs.joystick_drivers.wiimote;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_auto
    bluez
    cwiid
    geometry_msgs
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
    sensor_msgs
    std_msgs
    std_srvs
    wiimote_msgs
  ];

  colconRunDepends = [
    bluez
    cwiid
    geometry_msgs
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
    sensor_msgs
    std_msgs
    std_srvs
    wiimote_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
