{
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  example_interfaces,
  launch_testing,
  osrf_testing_tools_cpp,
  rcl,
  rcl_action,
  rclcpp,
  rclcpp_action,
  rcutils,
  rosidl_generator_c,
  rosidl_typesupport_c,
  std_msgs,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rclc";
  pkgFinal = final.rolling.rclc;
  src = srcs.rclc.rclc;

  colconBuildDepends = [
    ament_cmake_ros
    rcl
    rcl_action
    rcutils
    rosidl_generator_c
    rosidl_typesupport_c
  ];

  colconRunDepends = [
    rcl
    rcl_action
    rcutils
    rosidl_generator_c
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    example_interfaces
    launch_testing
    osrf_testing_tools_cpp
    rclcpp
    rclcpp_action
    std_msgs
    test_msgs
  ];
}
