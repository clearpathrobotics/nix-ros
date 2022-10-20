{
  ament_cmake,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  fastcdr,
  rcpputils,
  rcutils,
  rmw,
  rmw_dds_common,
  rosidl_runtime_c,
  rosidl_runtime_cpp,
  rosidl_typesupport_fastrtps_c,
  rosidl_typesupport_fastrtps_cpp,
  rosidl_typesupport_introspection_c,
  rosidl_typesupport_introspection_cpp,
  rti_connext_dds_cmake_module,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmw_connextdds_common";
  pkgFinal = final.rolling.rmw_connextdds_common;
  src = srcs.rmw_connextdds.rmw_connextdds_common;

  colconBuildDepends = [
    ament_cmake_ros
    fastcdr
    rcpputils
    rcutils
    rmw
    rmw_dds_common
    rosidl_runtime_c
    rosidl_runtime_cpp
    rosidl_typesupport_fastrtps_c
    rosidl_typesupport_fastrtps_cpp
    rosidl_typesupport_introspection_c
    rosidl_typesupport_introspection_cpp
    rti_connext_dds_cmake_module
  ];

  colconRunDepends = [
    ament_cmake
    fastcdr
    rcpputils
    rcutils
    rmw
    rmw_dds_common
    rosidl_runtime_c
    rosidl_runtime_cpp
    rosidl_typesupport_fastrtps_c
    rosidl_typesupport_fastrtps_cpp
    rosidl_typesupport_introspection_c
    rosidl_typesupport_introspection_cpp
    rti_connext_dds_cmake_module
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
