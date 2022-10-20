{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  launch,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  rclcpp,
  rcpputils,
  rmw_implementation,
  rmw_implementation_cmake,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_rclcpp";
  pkgFinal = final.rolling.test_rclcpp;
  src = srcs.system_tests.test_rclcpp;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    launch
    launch_testing
    launch_testing_ament_cmake
    launch_testing_ros
    rclcpp
    rcpputils
    rmw_implementation
    rmw_implementation_cmake
    rosidl_default_generators
    rosidl_default_runtime
  ];
}
