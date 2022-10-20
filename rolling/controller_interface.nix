{
  ament_cmake,
  ament_cmake_gmock,
  hardware_interface,
  rclcpp_lifecycle,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "controller_interface";
  pkgFinal = final.rolling.controller_interface;
  src = srcs.ros2_control.controller_interface;

  colconBuildDepends = [
    ament_cmake
    hardware_interface
    rclcpp_lifecycle
    sensor_msgs
  ];

  colconRunDepends = [
    hardware_interface
    rclcpp_lifecycle
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_gmock
  ];
}
