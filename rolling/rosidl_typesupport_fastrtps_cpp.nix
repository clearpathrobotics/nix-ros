{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_python,
  ament_cmake_ros,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  fastcdr,
  fastrtps_cmake_module,
  osrf_testing_tools_cpp,
  performance_test_fixture,
  python3,
  rmw,
  rosidl_cli,
  rosidl_generator_cpp,
  rosidl_pycommon,
  rosidl_runtime_c,
  rosidl_runtime_cpp,
  rosidl_typesupport_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_typesupport_fastrtps_cpp";
  pkgFinal = final.rolling.rosidl_typesupport_fastrtps_cpp;
  src = srcs.rosidl_typesupport_fastrtps.rosidl_typesupport_fastrtps_cpp;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    ament_index_python
    fastcdr
    fastrtps_cmake_module
    rmw
    rosidl_cli
    rosidl_runtime_c
  ];

  colconRunDepends = [
    ament_cmake_ros
    ament_index_python
    fastcdr
    fastrtps_cmake_module
    python3
    rmw
    rosidl_cli
    rosidl_generator_cpp
    rosidl_pycommon
    rosidl_runtime_c
    rosidl_runtime_cpp
    rosidl_typesupport_interface
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    osrf_testing_tools_cpp
    performance_test_fixture
  ];
}
