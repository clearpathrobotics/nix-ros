{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  pybind11_vendor,
  python3Packages,
  python_cmake_module,
  rcl,
  rcl_action,
  rcl_interfaces,
  rcl_lifecycle,
  rcl_logging_interface,
  rcl_yaml_param_parser,
  rcpputils,
  rcutils,
  rmw,
  rmw_implementation,
  rmw_implementation_cmake,
  rosgraph_msgs,
  rosidl_generator_py,
  rosidl_runtime_c,
  rpyutils,
  test_msgs,
  unique_identifier_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rclpy";
  pkgFinal = final.rolling.rclpy;
  src = srcs.rclpy.rclpy;

  colconBuildDepends = [
    ament_cmake
    pybind11_vendor
    python_cmake_module
    rcl
    rcl_action
    rcl_lifecycle
    rcl_logging_interface
    rcl_yaml_param_parser
    rcpputils
    rcutils
    rmw
    rmw_implementation
    rmw_implementation_cmake
    rosidl_runtime_c
    unique_identifier_msgs
  ];

  colconRunDepends = [
    ament_index_python
    builtin_interfaces
    rcl
    rcl_action
    rcl_interfaces
    rcl_lifecycle
    rcl_logging_interface
    rcl_yaml_param_parser
    rmw
    rmw_implementation
    rosgraph_msgs
    rosidl_runtime_c
    rpyutils
    unique_identifier_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    python3Packages.pytest
    rosidl_generator_py
    test_msgs
  ];
}
