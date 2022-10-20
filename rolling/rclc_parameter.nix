{
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  example_interfaces,
  osrf_testing_tools_cpp,
  rcl,
  rcl_interfaces,
  rclc,
  rclcpp,
  rcutils,
  rosidl_runtime_c,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rclc_parameter";
  pkgFinal = final.rolling.rclc_parameter;
  src = srcs.rclc.rclc_parameter;

  colconBuildDepends = [
    ament_cmake_ros
    builtin_interfaces
    rcl
    rcl_interfaces
    rclc
    rcutils
    rosidl_runtime_c
  ];

  colconRunDepends = [
    builtin_interfaces
    rcl
    rcl_interfaces
    rclc
    rcutils
    rosidl_runtime_c
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    example_interfaces
    osrf_testing_tools_cpp
    rclcpp
    std_msgs
  ];
}
