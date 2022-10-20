{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  launch,
  launch_testing,
  osrf_testing_tools_cpp,
  rclcpp,
  rmw_implementation,
  rmw_implementation_cmake,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "performance_test";
  pkgFinal = final.rolling.performance_test;
  src = srcs.performance_test.performance_test;

  colconBuildDepends = [
    ament_cmake
    osrf_testing_tools_cpp
    rclcpp
    rosidl_default_generators
  ];

  colconRunDepends = [
    rclcpp
    rmw_implementation
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    launch
    launch_testing
    osrf_testing_tools_cpp
    rmw_implementation_cmake
  ];
}
