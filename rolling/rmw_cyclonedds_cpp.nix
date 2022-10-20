{
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  cyclonedds,
  iceoryx_binding_c,
  rcpputils,
  rcutils,
  rmw,
  rmw_dds_common,
  rosidl_runtime_c,
  rosidl_typesupport_introspection_c,
  rosidl_typesupport_introspection_cpp,
  tracetools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmw_cyclonedds_cpp";
  pkgFinal = final.rolling.rmw_cyclonedds_cpp;
  src = srcs.rmw_cyclonedds.rmw_cyclonedds_cpp;

  colconBuildDepends = [
    ament_cmake_ros
    cyclonedds
    iceoryx_binding_c
    rcpputils
    rcutils
    rmw
    rmw_dds_common
    rosidl_runtime_c
    rosidl_typesupport_introspection_c
    rosidl_typesupport_introspection_cpp
    tracetools
  ];

  colconRunDepends = [
    cyclonedds
    iceoryx_binding_c
    rcpputils
    rcutils
    rmw
    rmw_dds_common
    rosidl_runtime_c
    rosidl_typesupport_introspection_c
    rosidl_typesupport_introspection_cpp
    tracetools
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
