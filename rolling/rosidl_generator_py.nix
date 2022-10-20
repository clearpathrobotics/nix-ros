{
  ament_cmake,
  ament_cmake_pytest,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  python3Packages,
  python_cmake_module,
  rmw,
  rosidl_cli,
  rosidl_cmake,
  rosidl_generator_c,
  rosidl_generator_cpp,
  rosidl_parser,
  rosidl_pycommon,
  rosidl_runtime_c,
  rosidl_typesupport_c,
  rosidl_typesupport_fastrtps_c,
  rosidl_typesupport_interface,
  rosidl_typesupport_introspection_c,
  rpyutils,
  test_interface_files,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_generator_py";
  pkgFinal = final.rolling.rosidl_generator_py;
  src = srcs.rosidl_python.rosidl_generator_py;

  colconBuildDepends = [
    ament_cmake
    rosidl_runtime_c
  ];

  colconRunDepends = [
    ament_cmake
    ament_index_python
    python3Packages.numpy
    python_cmake_module
    rmw
    rosidl_cli
    rosidl_generator_c
    rosidl_parser
    rosidl_pycommon
    rosidl_runtime_c
    rosidl_typesupport_c
    rosidl_typesupport_interface
    rpyutils
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_index_python
    ament_lint_auto
    ament_lint_common
    python3Packages.numpy
    python3Packages.pytest
    python_cmake_module
    rmw
    rosidl_cmake
    rosidl_generator_c
    rosidl_generator_cpp
    rosidl_parser
    rosidl_typesupport_c
    rosidl_typesupport_fastrtps_c
    rosidl_typesupport_introspection_c
    rpyutils
    test_interface_files
  ];
}
