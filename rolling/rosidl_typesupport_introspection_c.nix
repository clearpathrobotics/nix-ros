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
  rosidl_typesupport_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_typesupport_introspection_c";
  pkgFinal = final.rolling.rosidl_typesupport_introspection_c;
  src = srcs.rosidl.rosidl_typesupport_introspection_c;

  colconBuildDepends = [
    ament_cmake_ros
  ];

  colconRunDepends = [
    ament_cmake
    ament_index_python
    python3
    rosidl_cli
    rosidl_parser
    rosidl_pycommon
    rosidl_runtime_c
    rosidl_typesupport_interface
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
