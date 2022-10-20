{
  ament_cmake,
  ament_cmake_auto,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  launch,
  launch_testing,
  launch_testing_ament_cmake,
  osrf_testing_tools_cpp,
  python_cmake_module,
  rcl,
  rclcpp,
  rclcpp_action,
  rclpy,
  rcpputils,
  rmw_implementation,
  rmw_implementation_cmake,
  ros2cli,
  rosidl_default_generators,
  rosidl_default_runtime,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_communication";
  pkgFinal = final.rolling.test_communication;
  src = srcs.system_tests.test_communication;

  colconBuildDepends = [
    ament_cmake_auto
    python_cmake_module
    rosidl_default_generators
  ];

  colconRunDepends = [
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_cmake
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    launch
    launch_testing
    launch_testing_ament_cmake
    osrf_testing_tools_cpp
    rcl
    rclcpp
    rclcpp_action
    rclpy
    rcpputils
    rmw_implementation
    rmw_implementation_cmake
    ros2cli
    test_msgs
  ];
}
