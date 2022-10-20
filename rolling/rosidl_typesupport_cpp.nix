{
  ament_cmake_core,
  ament_cmake_ros,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  performance_test_fixture,
  python3,
  rcpputils,
  rcutils,
  rosidl_cli,
  rosidl_pycommon,
  rosidl_runtime_c,
  rosidl_runtime_cpp,
  rosidl_typesupport_c,
  rosidl_typesupport_interface,
  rosidl_typesupport_introspection_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_typesupport_cpp";
  pkgFinal = final.rolling.rosidl_typesupport_cpp;
  src = srcs.rosidl_typesupport.rosidl_typesupport_cpp;

  colconBuildDepends = [
    ament_cmake_ros
    rcpputils
    rcutils
    rosidl_runtime_c
    rosidl_typesupport_c
    rosidl_typesupport_introspection_cpp
  ];

  colconRunDepends = [
    ament_cmake_core
    ament_index_python
    python3
    rcpputils
    rcutils
    rosidl_cli
    rosidl_pycommon
    rosidl_runtime_c
    rosidl_runtime_cpp
    rosidl_typesupport_c
    rosidl_typesupport_interface
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    performance_test_fixture
  ];
}
