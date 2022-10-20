{
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  gurumdds_cmake_module,
  rcutils,
  rmw,
  rmw_dds_common,
  rosidl_cmake,
  rosidl_generator_dds_idl,
  rosidl_runtime_c,
  rosidl_runtime_cpp,
  rosidl_typesupport_introspection_c,
  rosidl_typesupport_introspection_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmw_gurumdds_cpp";
  pkgFinal = final.rolling.rmw_gurumdds_cpp;
  src = srcs.rmw_gurumdds.rmw_gurumdds_cpp;

  colconBuildDepends = [
    ament_cmake_ros
    gurumdds_cmake_module
    rcutils
    rmw
    rmw_dds_common
    rosidl_cmake
    rosidl_generator_dds_idl
    rosidl_runtime_c
    rosidl_runtime_cpp
    rosidl_typesupport_introspection_c
    rosidl_typesupport_introspection_cpp
  ];

  colconRunDepends = [
    gurumdds_cmake_module
    rcutils
    rmw
    rmw_dds_common
    rosidl_runtime_c
    rosidl_runtime_cpp
    rosidl_typesupport_introspection_c
    rosidl_typesupport_introspection_cpp
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
