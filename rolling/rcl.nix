{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  launch,
  launch_testing,
  launch_testing_ament_cmake,
  mimick_vendor,
  osrf_testing_tools_cpp,
  rcl_interfaces,
  rcl_logging_interface,
  rcl_logging_spdlog,
  rcl_yaml_param_parser,
  rcpputils,
  rcutils,
  rmw,
  rmw_implementation,
  rmw_implementation_cmake,
  rosidl_runtime_c,
  test_msgs,
  tracetools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcl";
  pkgFinal = final.rolling.rcl;
  src = srcs.rcl.rcl;

  colconBuildDepends = [
    ament_cmake_ros
    rcl_interfaces
    rcl_logging_interface
    rcl_logging_spdlog
    rcl_yaml_param_parser
    rcutils
    rmw_implementation
    rosidl_runtime_c
    tracetools
  ];

  colconRunDepends = [
    rcl_interfaces
    rcl_logging_interface
    rcl_logging_spdlog
    rcl_yaml_param_parser
    rcutils
    rmw
    rmw_implementation
    rosidl_runtime_c
    tracetools
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    launch
    launch_testing
    launch_testing_ament_cmake
    mimick_vendor
    osrf_testing_tools_cpp
    rcpputils
    rmw
    rmw_implementation_cmake
    test_msgs
  ];
}
