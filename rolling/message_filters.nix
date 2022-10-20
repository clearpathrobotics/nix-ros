{
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_python,
  ament_cmake_ros,
  ament_lint_auto,
  builtin_interfaces,
  python_cmake_module,
  rclcpp,
  rclcpp_lifecycle,
  rclpy,
  rcutils,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "message_filters";
  pkgFinal = final.rolling.message_filters;
  src = srcs.message_filters.message_filters;

  colconBuildDepends = [
    ament_cmake_python
    ament_cmake_ros
    python_cmake_module
    rclcpp
    rcutils
  ];

  colconRunDepends = [
    builtin_interfaces
    rclcpp
    rclpy
    rcutils
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    rclcpp_lifecycle
    sensor_msgs
    std_msgs
  ];
}
