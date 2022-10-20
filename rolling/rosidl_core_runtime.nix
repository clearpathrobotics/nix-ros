{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rosidl_generator_py,
  rosidl_runtime_c,
  rosidl_runtime_cpp,
  rosidl_typesupport_c,
  rosidl_typesupport_cpp,
  rosidl_typesupport_fastrtps_c,
  rosidl_typesupport_fastrtps_cpp,
  rosidl_typesupport_introspection_c,
  rosidl_typesupport_introspection_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_core_runtime";
  pkgFinal = final.rolling.rosidl_core_runtime;
  src = srcs.rosidl_core.rosidl_core_runtime;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    rosidl_generator_py
    rosidl_runtime_c
    rosidl_runtime_cpp
    rosidl_typesupport_c
    rosidl_typesupport_cpp
    rosidl_typesupport_fastrtps_c
    rosidl_typesupport_fastrtps_cpp
    rosidl_typesupport_introspection_c
    rosidl_typesupport_introspection_cpp
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
