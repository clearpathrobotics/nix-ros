{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  osrf_testing_tools_cpp,
  rcutils,
  rmw,
  rmw_dds_common,
  rmw_implementation,
  rmw_implementation_cmake,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_rmw_implementation";
  pkgFinal = final.rolling.test_rmw_implementation;
  src = srcs.rmw_implementation.test_rmw_implementation;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    osrf_testing_tools_cpp
    rcutils
    rmw
    rmw_dds_common
    rmw_implementation
    rmw_implementation_cmake
    test_msgs
  ];
}
