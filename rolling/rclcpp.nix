{
  ament_cmake_gen_version_h,
  ament_cmake_gmock,
  ament_cmake_google_benchmark,
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  libstatistics_collector,
  mimick_vendor,
  performance_test_fixture,
  python3,
  rcl,
  rcl_interfaces,
  rcl_yaml_param_parser,
  rcpputils,
  rcutils,
  rmw,
  rmw_implementation_cmake,
  rosgraph_msgs,
  rosidl_default_generators,
  rosidl_runtime_cpp,
  rosidl_typesupport_c,
  rosidl_typesupport_cpp,
  statistics_msgs,
  test_msgs,
  tracetools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rclcpp";
  pkgFinal = final.rolling.rclcpp;
  src = srcs.rclcpp.rclcpp;

  colconBuildDepends = [
    ament_cmake_gen_version_h
    ament_cmake_ros
    ament_index_cpp
    builtin_interfaces
    libstatistics_collector
    python3
    rcl
    rcl_interfaces
    rcl_yaml_param_parser
    rcpputils
    rcutils
    rmw
    rosgraph_msgs
    rosidl_runtime_cpp
    rosidl_typesupport_c
    rosidl_typesupport_cpp
    statistics_msgs
    tracetools
  ];

  colconRunDepends = [
    ament_index_cpp
    builtin_interfaces
    libstatistics_collector
    rcl
    rcl_interfaces
    rcl_yaml_param_parser
    rcpputils
    rcutils
    rmw
    rosgraph_msgs
    rosidl_runtime_cpp
    rosidl_typesupport_c
    rosidl_typesupport_cpp
    statistics_msgs
    tracetools
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_cmake_google_benchmark
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    mimick_vendor
    performance_test_fixture
    rmw
    rmw_implementation_cmake
    rosidl_default_generators
    test_msgs
  ];
}
