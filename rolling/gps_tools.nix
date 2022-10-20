{
  ament_cmake,
  ament_cmake_python,
  gps_msgs,
  nav_msgs,
  rclcpp,
  rclcpp_components,
  rclpy,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gps_tools";
  pkgFinal = final.rolling.gps_tools;
  src = srcs.gps_umd.gps_tools;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    gps_msgs
    nav_msgs
    rclcpp
    rclcpp_components
    rclpy
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    gps_msgs
    nav_msgs
    rclcpp
    rclcpp_components
    rclpy
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
