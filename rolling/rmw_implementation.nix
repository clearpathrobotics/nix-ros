{
  ament_cmake,
  ament_cmake_gtest,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  performance_test_fixture,
  rcpputils,
  rcutils,
  rmw,
  rmw_connextdds,
  rmw_cyclonedds_cpp,
  rmw_fastrtps_cpp,
  rmw_fastrtps_dynamic_cpp,
  rmw_implementation_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmw_implementation";
  pkgFinal = final.rolling.rmw_implementation;
  src = srcs.rmw_implementation.rmw_implementation;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    rcpputils
    rcutils
    rmw
    rmw_connextdds
    rmw_cyclonedds_cpp
    rmw_fastrtps_cpp
    rmw_fastrtps_dynamic_cpp
    rmw_implementation_cmake
  ];

  colconRunDepends = [
    ament_index_cpp
    rcpputils
    rcutils
    rmw_implementation_cmake
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    performance_test_fixture
  ];
}
