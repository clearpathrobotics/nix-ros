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
  rcl,
  rclcpp,
  rmw_implementation,
  rmw_implementation_cmake,
  ros2cli,
  sros2,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_security";
  pkgFinal = final.rolling.test_security;
  src = srcs.system_tests.test_security;

  colconBuildDepends = [
    ament_cmake_auto
  ];

  colconRunDepends = [
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
    rmw_implementation
    rmw_implementation_cmake
    ros2cli
    sros2
    test_msgs
  ];
}
