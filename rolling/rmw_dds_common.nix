{
  ament_cmake,
  ament_cmake_gmock,
  ament_lint_auto,
  ament_lint_common,
  osrf_testing_tools_cpp,
  performance_test_fixture,
  rcpputils,
  rcutils,
  rmw,
  rosidl_default_generators,
  rosidl_default_runtime,
  rosidl_runtime_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmw_dds_common";
  pkgFinal = final.rolling.rmw_dds_common;
  src = srcs.rmw_dds_common.rmw_dds_common;

  colconBuildDepends = [
    ament_cmake
    rcpputils
    rcutils
    rmw
    rosidl_default_generators
    rosidl_runtime_cpp
  ];

  colconRunDepends = [
    rcpputils
    rcutils
    rmw
    rosidl_default_runtime
    rosidl_runtime_cpp
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
    osrf_testing_tools_cpp
    performance_test_fixture
  ];
}
