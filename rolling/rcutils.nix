{
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  launch,
  launch_testing,
  launch_testing_ament_cmake,
  mimick_vendor,
  osrf_testing_tools_cpp,
  performance_test_fixture,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcutils";
  pkgFinal = final.rolling.rcutils;
  src = srcs.rcutils.rcutils;

  colconBuildDepends = [
    ament_cmake_ros
    python3Packages.empy
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    launch
    launch_testing
    launch_testing_ament_cmake
    mimick_vendor
    osrf_testing_tools_cpp
    performance_test_fixture
  ];
}
