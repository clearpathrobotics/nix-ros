{
  ament_cmake,
  ament_cmake_core,
  ament_lint_auto,
  ament_lint_common,
  rosidl_cmake,
  rosidl_generator_c,
  rosidl_generator_cpp,
  rosidl_generator_py,
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
  name = "rosidl_core_generators";
  pkgFinal = final.rolling.rosidl_core_generators;
  src = srcs.rosidl_core.rosidl_core_generators;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_cmake_core
    rosidl_cmake
    rosidl_generator_c
    rosidl_generator_cpp
    rosidl_generator_py
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
