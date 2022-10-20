{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  rcl,
  rclcpp,
  rcutils,
  rmw,
  rmw_implementation,
  rmw_implementation_cmake,
  std_msgs,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_quality_of_service";
  pkgFinal = final.rolling.test_quality_of_service;
  src = srcs.system_tests.test_quality_of_service;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    rcl
    rclcpp
    rcutils
    rmw
    rmw_implementation
    rmw_implementation_cmake
    std_msgs
    test_msgs
  ];
}
