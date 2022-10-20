{
  ament_cmake,
  ament_cmake_ros,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  python3,
  rosidl_cli,
  rosidl_parser,
  rosidl_pycommon,
  rosidl_runtime_c,
  rosidl_runtime_cpp,
  rosidl_typesupport_interface,
  rosidl_typesupport_introspection_c,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_typesupport_introspection_cpp";
  pkgFinal = final.rolling.rosidl_typesupport_introspection_cpp;
  src = srcs.rosidl.rosidl_typesupport_introspection_cpp;

  colconBuildDepends = [
    ament_cmake_ros
    rosidl_runtime_cpp
    rosidl_typesupport_introspection_c
  ];

  colconRunDepends = [
    ament_cmake
    ament_index_python
    python3
    rosidl_cli
    rosidl_parser
    rosidl_pycommon
    rosidl_runtime_c
    rosidl_runtime_cpp
    rosidl_typesupport_interface
    rosidl_typesupport_introspection_c
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
