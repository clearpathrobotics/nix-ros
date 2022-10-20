{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  performance_test_fixture,
  rcl,
  rcpputils,
  rosidl_default_generators,
  rosidl_default_runtime,
  statistics_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libstatistics_collector";
  pkgFinal = final.rolling.libstatistics_collector;
  src = srcs.libstatistics_collector.libstatistics_collector;

  colconBuildDepends = [
    ament_cmake_ros
    builtin_interfaces
    rcl
    rcpputils
    statistics_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    rcl
    rcpputils
    statistics_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    performance_test_fixture
    rosidl_default_generators
    rosidl_default_runtime
    std_msgs
  ];
}
